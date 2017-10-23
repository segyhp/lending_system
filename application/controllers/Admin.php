<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends MY_Controller {
	function __construct() {
        parent::__construct();
        $notif = $this->get_all_notif_admin();
        $total_notif = $this->total_notif_admin();
        $this->construct_inventory();
        $this->controller_attr = array('controller' => 'admin', 'controller_name' => 'Admin', 'notif' => $notif, 'total_notif' => $total_notif);
    }

	public function index() {
		if ($this->check_admin_login()) {
            redirect('admin/dashboard');
        } else {
            redirect('admin/login');
        }
	}

	public function login() {
		$data['function'] = 'login';
        $data['function_name'] = 'Login';

        if ($this->check_admin_login()) {
            redirect('admin');
        } else {
        	$this->load->view('admin/pages/main/login_form', $data);
        }
	}

    public function validate_login() {
        $data['function'] = 'validate_login';
        $data['function_name'] = 'Validate Login';

        if ($this->check_admin_login()) {
            redirect('admin');
        } else {
            $email = $this->input->post('email');
            $password = $this->input->post('password');

            $admin_user = $this->basic_model->select_where('users', 'email', $email)->row();

            if ($admin_user && ($admin_user->user_roles_id == 1 || $admin_user->user_roles_id == 2)) {
                if ($password == $this->encrypt->decode($admin_user->password)) {
                    $data = array(
                        'id' => $admin_user->id,
                        'email' => $admin_user->email,
                        'name' => $admin_user->first_name . ' ' . $admin_user->last_name,
                        'role' => $admin_user->user_roles_id
                    );

                    $this->session->set_userdata('admin', $data);

                    $this->returnJson(array('status' => 'success', 'message' => 'Login Success', 'redirect' => 'admin'));
                } else {
                    $this->returnJson(array('status' => 'error', 'message' => 'Wrong password'));
                }
            } else {
                $this->returnJson(array('status' => 'error', 'message' => 'Email not registered'));
            }
        }
    }

    public function logout() {
        $data['function'] = 'logout';
        $data['function_name'] = 'Logout';

        if ($this->check_admin_login()) {
            $this->session->unset_userdata('admin');

            redirect('admin');
        } else {
            redirect('admin');
        }
    }

	public function dashboard() {
        if ($this->check_admin_login()) {
            $data = $this->controller_attr;
            $data['function_parent'] = 'dashboard';
            $data['function_parent_name'] = 'Dashboard';
            $data['function_sub'] = 'dashboard';
            $data['function_sub_name'] = 'Dashboard';
            $data['function'] = 'dashboard';
            $data['function_name'] = 'Dashboard';

            $d = $this->basic_model->select_all_order('lends', 'lend_at', 'DESC');

            foreach ($d as $row) {
                $row->lend_at = date('d F Y', $row->lend_at);
                if($row->returned_at == 0)
                    $row->returned_at = '-';
                else
                    $row->returned_at = date('d F Y', $row->returned_at);

                if ($row->lend_type_id == 1) 
                    $row->lend_type = 'Temporary';
                else 
                    $row->lend_type = 'Permanent';
            }

            $data['total_employee'] = $this->basic_model->select_where('users', 'user_roles_id', 3)->num_rows();
            $data['total_lend'] = count($d);
            $data['total_inventories'] = $this->basic_model->select_where('inventories', 'flag', 1)->num_rows();

            $data['data'] = $d;

            $data['page'] = $this->load->view('admin/pages/main/dashboard', $data, true);
            $this->load->view('admin/index', $data);
        } else {
            redirect('admin');
        }
    }

    public function profile() {
        if ($this->check_admin_login()) {
            $data = $this->controller_attr;
            $data['function_parent'] = 'profile';
            $data['function_parent_name'] = 'Profile';
            $data['function_sub'] = 'profile';
            $data['function_sub_name'] = 'Profile';
            $data['function'] = 'profile';
            $data['function_name'] = 'Profile';
            $data['function_edit'] = 'edit_profile';
            $data['function_get_data'] = 'get_profile';

            $data_user = $this->basic_model->select_where('users', 'id', $this->session->userdata['admin']['id'])->row();

            $data_user->role = $this->basic_model->select_where('user_roles', 'id', $data_user->user_roles_id)->row()->name;
            $data['user'] = $data_user;

            $data['page'] = $this->load->view('admin/pages/profile/index', $data, true);
            $this->load->view('admin/index', $data);
        } else {
            redirect('admin');
        }
    }

    public function edit_profile() {
        $data = $this->controller_attr;

        $id = $this->input->post('id');
        $data_update = array(
            'first_name' => $this->input->post('first_name'),
            'last_name' => $this->input->post('last_name'),
            'modified_at' => strtotime(date('Y-m-d H:i:s', now()))
        );

        $data_user = array(
            'id' => $this->session->userdata['admin']['id'],
            'email' => $this->session->userdata['admin']['email'],
            'name' => $this->input->post('first_name') . ' ' . $this->input->post('last_name'),
            'role' => $this->session->userdata['admin']['role']
        );
        $this->session->set_userdata('admin', $data_user);

        if ($this->input->post('first_name') && $this->input->post('last_name')) {
            $update = $this->basic_model->update('users', $data_update, 'id', $id);
            if ($update) {
                $this->log('2', 'You has updated your profiles');
                redirect('admin/profile?update=true');
            } else
                redirect('admin/profile?update=error');
        } else
            redirect('admin/profile?update=error');
    }

    public function change_password() {
        if ($this->check_admin_login()) {
            $data = $this->controller_attr;
            $data['function_parent'] = 'change_password';
            $data['function_parent_name'] = 'Change Password';
            $data['function_sub'] = 'change_password';
            $data['function_sub_name'] = 'Change Password';
            $data['function'] = 'change_password';
            $data['function_name'] = 'Change Password';

            $data['page'] = $this->load->view('admin/pages/change_password/index', $data, true);
            $this->load->view('admin/index', $data);
        } else {
            redirect('admin');
        }
    }

    public function edit_password() {
        $data_user = $this->basic_model->select_where('users', 'id', $this->session->userdata['admin']['id'])->row();

        if ($this->input->post('currentpassword') == $this->encrypt->decode($data_user->password) && $this->input->post('newpassword') == $this->input->post('renewpassword')) {
            if (strlen($this->input->post('newpassword')) < 6) {
                redirect('admin/change_password?msg=error&length=false');
            } else {
                $data = array(
                    'password' => $this->encrypt->encode($this->input->post('newpassword')),
                    'modified_at' => strtotime(date('Y-m-d H:i:s', now()))
                );

                $this->basic_model->update('users', $data, 'id', $this->session->userdata['admin']['id']);
                $this->log('2', 'You has changed your password');
                redirect('admin/change_password?msg=success');
            }
        } else {
            redirect('admin/change_password?msg=error&length=');
        }
    }

    public function users() {
        if ($this->check_admin_login()) {
            $data = $this->controller_attr;

            $data['function_parent'] = 'users';
            $data['function_parent_name'] = 'Users';
            $data['function_sub'] = 'users';
            $data['function_sub_name'] = 'Users';
            $data['function'] = 'users';
            $data['function_name'] = 'Users';
            $data['function_add'] = 'add_users';
            $data['function_delete'] = 'delete_users';
            $data['function_edit'] = 'edit_users';
            $data['function_get_data'] = 'get_users';

            if($this->session->userdata['admin']['role'] == 2)
                $d = $this->basic_model->select_where_order('users', 'active', 1, 'created_at', 'DESC');
            else
                $d = $this->basic_model->select_where_double_order('users', 'user_roles_id', 3, 'active', 1, 'created_at', 'DESC')->result();

            foreach ($d as $row) {
                $row->role = $this->basic_model->select_where('user_roles', 'id', $row->user_roles_id)->row()->name;
            }

            $data['data'] = $d;
            $data['roles'] = $this->basic_model->select_all('user_roles');

            $data['page'] = $this->load->view('admin/pages/users/index', $data, true);
            $this->load->view('admin/index', $data);
        } else
            redirect('admin');
    }

    public function add_users(){
        $data = $this->controller_attr;

        $data_insert = array(
            'email' => $this->input->post('email'),
            'first_name' => $this->input->post('first_name'),
            'last_name' => $this->input->post('last_name'),
            'apo_id' => $this->input->post('apo_id'),
            'password' => $this->encrypt->encode($this->input->post('password')),
            'user_roles_id' => $this->input->post('role'),
            // 'activation_code' => $this->generate_random_string(8),
            'forgot_password_at' => 0,
            'active' => 1,
            'created_at' => strtotime(date('Y-m-d H:i:s', now())),
            'modified_at' => 0
            );

        $email_check = $this->basic_model->select_where('users','email',$this->input->post('email'))->row();
        if($this->input->post('email') && $this->input->post('first_name') && $this->input->post('last_name') && $this->input->post('apo_id') && $this->input->post('password') && $this->input->post('c-password')){
            if($this->input->post('password') == $this->input->post('c-password')){
                if($email_check)
                    $this->returnJson(array('status'=>'error','message'=>'Email has been registered by other User, Please choose another email'));
                else{
                    $insert = $this->basic_model->insert_all('users',$data_insert);
                    if($insert) {
                        $this->log('1', 'You has create a new account ' . $this->input->post('email'));
                        $this->returnJson(array('status' => 'success','message' => 'Insert Success','redirect' => 'admin/users'));
                    }
                    else
                        $this->returnJson(array('status'=>'error','message'=>'Insert Failed'));
                }
            }
            else
                $this->returnJson(array('status'=>'error','message'=>'Password doesn\'t match'));
        }
        else
            $this->returnJson(array('status' => 'error','message' => 'Please Complete The Form'));
    }

    public function get_users(){
        $id = $this->input->post('id');
        $data = $this->controller_attr;

        $data_get = $this->basic_model->select_where('users', 'id', $id)->row();
        $data_get->password = $this->encrypt->decode($data_get->password);
        if($data_get){
            $this->returnJson(array('status'=>'success','data'=>$data_get));
        }
        else{
            $this->returnJson(array('status'=>'error','message'=>'Data Not Found'));
        }
    }

    public function edit_users(){
        $data = $this->controller_attr;

        $id = $this->input->post('id');
        $data_update = array(
            'first_name' => $this->input->post('first_name'),
            'last_name' => $this->input->post('last_name'),
            'apo_id' => $this->input->post('apo_id'),
            'password' => $this->encrypt->encode($this->input->post('password')),
            'user_roles_id' => $this->input->post('role'),
            'modified_at' => strtotime(date('Y-m-d H:i:s', now()))
            );
        if($this->input->post('email') && $this->input->post('first_name') && $this->input->post('last_name') && $this->input->post('apo_id') && $this->input->post('password') && $this->input->post('c-password')){
            if($this->input->post('password') == $this->input->post('c-password')){
                $update = $this->basic_model->update('users',$data_update,'id',$id);
                if($update){
                    if($id == $this->session->userdata['admin']['id']){
                        $data_user = array(
                            'id' => $this->session->userdata['admin']['id'],
                            'email' => $this->session->userdata['admin']['email'],
                            'name' => $this->input->post('first_name') . ' ' . $this->input->post('last_name'),
                            'role' => $this->session->userdata['admin']['role']
                        );
                        $this->session->set_userdata('admin',$data_user);
                    }
                    $this->log('2', 'You has modified account ' . $this->input->post('email'));
                    $this->returnJson(array('status' => 'success','message' => 'Update Success','redirect' => 'admin/users'));
                }
                else
                    $this->returnJson(array('status'=>'error','message'=>'Update Failed'));
            }
            else
                $this->returnJson(array('status'=>'error','message'=>'Password doesn\'t match'));
        }
        else
            $this->returnJson(array('status' => 'error','message' => 'Please Complete The Form'));
    }

    public function delete_users(){
        $id = $this->input->post('id');
        if ($this->check_admin_login()) {
            $data = $this->controller_attr;

            $data_update = array(
                'active' => 0,
                'modified_at' => strtotime(date('Y-m-d H:i:s', now()))
                );

            $update = $this->basic_model->update('users',$data_update,'id',$id);
            if($update) {
                $this->log('3', 'You has deleted account with id : ' . $id);
                redirect('admin/users?delete=success');
            }
            else
                redirect('admin/users?delete=error');
        } else
            redirect('admin');
    }

    public function inventory() {
        if ($this->check_admin_login()) {
            $data = $this->controller_attr;

            $data['function_parent'] = 'inventory';
            $data['function_parent_name'] = 'Inventory';
            $data['function_sub'] = 'inventory';
            $data['function_sub_name'] = 'Inventory';
            $data['function'] = 'inventory';
            $data['function_name'] = 'Inventory';
            $data['function_add'] = 'add_inventory';
            $data['function_delete'] = 'delete_inventory';
            $data['function_edit'] = 'edit_inventory';
            $data['function_get_data'] = 'get_inventory';

            $d = $this->basic_model->select_where_order('inventories', 'flag', 1, 'created_at', 'DESC');

            foreach ($d as $row) {
                $row->acquisition = date('d F Y', $row->acquisition);
                $row->category = $this->basic_model->select_where('inventory_categories', 'id', $row->inventory_categories_id)->row()->name;
                $row->types = $this->basic_model->select_where('inventory_types', 'id', $row->inventory_types_id)->row()->name;
                $row->status = $this->basic_model->select_where('inventory_status', 'id', $row->inventory_status_id)->row()->name;
            }

            $data['data'] = $d;
            $data['category'] = $this->basic_model->select_all('inventory_categories');
            $data['types'] = $this->basic_model->select_all('inventory_types');
            $data['status'] = $this->basic_model->select_all('inventory_status');

            $data['page'] = $this->load->view('admin/pages/inventory/index', $data, true);
            $this->load->view('admin/index', $data);
        } else
            redirect('admin');
    }

    public function add_inventory(){
        $data = $this->controller_attr;

        $data_insert = array(
            'acquisition' => strtotime($this->input->post('acquisition') . '00:00:00'),
            'asset_number' => $this->input->post('asset_number'),
            'description' => $this->input->post('description'),
            'serial_number' => $this->input->post('serial_number'),
            'location' => $this->input->post('location'),
            'remark' => $this->input->post('remark'),
            'created_at' => strtotime(date('Y-m-d H:i:s', now())),
            'modified_at' => 0,
            'inventory_categories_id' => $this->input->post('category'),
            'inventory_types_id' => $this->input->post('types'),
            'inventory_status_id' => $this->input->post('status')
            );
        
        if($this->input->post('acquisition') && $this->input->post('asset_number') && $this->input->post('description') && $this->input->post('serial_number') && $this->input->post('location') && $this->input->post('remark') && $this->input->post('category') && $this->input->post('types') && $this->input->post('status')){
        
            $insert = $this->basic_model->insert_all('inventories',$data_insert);
            if($insert) {
                $this->log('1', 'You has created a new inventory ' . $this->input->post('description'));
                $this->returnJson(array('status' => 'success','message' => 'Insert Success','redirect' => 'admin/inventory'));
            }
            else
                $this->returnJson(array('status'=>'error','message'=>'Insert Failed'));
        }
        else
            $this->returnJson(array('status' => 'error','message' => 'Please Complete The Form'));
    }

    public function get_inventory(){
        $id = $this->input->post('id');
        $data = $this->controller_attr;

        $data_get = $this->basic_model->select_where('inventories', 'id', $id)->row();
        $data_get->acquisition = date('m/d/Y', $data_get->acquisition);
        if($data_get){
            $this->returnJson(array('status'=>'success','data'=>$data_get));
        }
        else{
            $this->returnJson(array('status'=>'error','message'=>'Data Not Found'));
        }
    }

    public function edit_inventory(){
        $data = $this->controller_attr;

        $id = $this->input->post('id');
        $data_update = array(
            'acquisition' => strtotime($this->input->post('acquisition') . '00:00:00'),
            'asset_number' => $this->input->post('asset_number'),
            'description' => $this->input->post('description'),
            'serial_number' => $this->input->post('serial_number'),
            'location' => $this->input->post('location'),
            'remark' => $this->input->post('remark'),
            'modified_at' => strtotime(date('Y-m-d H:i:s', now())),
            'inventory_categories_id' => $this->input->post('category'),
            'inventory_types_id' => $this->input->post('types'),
            'inventory_status_id' => $this->input->post('status')
            );
        if($this->input->post('acquisition') && $this->input->post('asset_number') && $this->input->post('description') && $this->input->post('serial_number') && $this->input->post('location') && $this->input->post('remark') && $this->input->post('category') && $this->input->post('types') && $this->input->post('status')){

            $update = $this->basic_model->update('inventories',$data_update,'id',$id);
            if($update){
                $this->log('2', 'You has modified inventory ' . $this->input->post('description'));
                $this->returnJson(array('status' => 'success','message' => 'Update Success','redirect' => 'admin/inventory'));
            }
            else
                $this->returnJson(array('status'=>'error','message'=>'Update Failed'));
        }
        else
            $this->returnJson(array('status' => 'error','message' => 'Please Complete The Form'));
    }

    public function delete_inventory(){
        $id= $this->input->post('id');
        if ($this->check_admin_login()) {
            $data = $this->controller_attr;

            $data_update = array(
                'flag' => 0,
                'modified_at' => strtotime(date('Y-m-d H:i:s', now()))
                );

            $update = $this->basic_model->update('inventories',$data_update,'id',$id);
            if($update) {
                $this->log('3', 'You has deleted inventory with id : ' . $id);
                redirect('admin/inventory?delete=success');
            }
            else
                redirect('admin/inventory?delete=error');
        } else
            redirect('admin');
    }

    public function lend() {
        if ($this->check_admin_login()) {
            $data = $this->controller_attr;

            $data['function_parent'] = 'lend';
            $data['function_parent_name'] = 'Lend';
            $data['function_sub'] = 'lend';
            $data['function_sub_name'] = 'Lend';
            $data['function'] = 'lend';
            $data['function_name'] = 'Lend';
            $data['function_add'] = 'add_lend';
            $data['function_delete'] = 'delete_lend';
            $data['function_edit'] = 'edit_lend';
            $data['function_get_data'] = 'get_lend';

            $d = $this->basic_model->select_all_order('lends', 'id', 'DESC');

            foreach ($d as $row) {
                if($row->returned_at < strtotime(date('m/d/y 00:00:00', now())))
                    $row->action = 0;
                else
                    $row->action = 1;

                $row->lend_at = date('d F Y', $row->lend_at);
                $row->returned_at = date('d F Y', $row->returned_at);
                if ($row->lend_type_id == 1) $row->lend_type = 'Temporary';
                else $row->lend_type = 'Permanent';
                $user_id = $this->basic_model->select_where('user_lends', 'lend_id', $row->id)->row()->users_id;
                $users = $this->basic_model->select_where('users', 'id', $user_id)->row();
                $row->name = $users->first_name.' '.$users->last_name;
            }

            $data['data'] = $d;

            $data['page'] = $this->load->view('admin/pages/lend/index', $data, true);
            $this->load->view('admin/index', $data);
        } else
            redirect('admin');
    }

    public function lend_details() {
        if ($this->check_admin_login()) {
            if ($this->uri->segment(2) == 'lend_details') 
                show_404();
            else {
                $data = $this->controller_attr;
                $data['function'] = 'lend';
                $data['function_name'] = 'Lend Details';

                $id = $this->uri->segment(3);
                $d = $this->basic_model->select_where('lends', 'id', $id)->row();
                
                $d->user_id = $this->basic_model->select_where('user_lends', 'lend_id', $id)->row()->users_id;

                $user = $this->basic_model->select_where('users', 'id', $d->user_id)->row();

                $d->name = $user->first_name. ' ' .$user->last_name;
                $d->apo_id = $user->apo_id;

                $inventory_id = $this->basic_model->select_where('lend_inventories', 'lend_id', $id)->result();
                $invetory = array();

                $i = 0;
                foreach ($inventory_id as $row) {
                    $temp = $this->basic_model->select_where('inventories', 'id', $row->inventory_id)->row();
                    // array_push($inventory, $temp);
                    $inventory[$i] = (object) array();
                    $inventory[$i] = $temp;
                    $i++;
                }

                foreach ($inventory as $row) {
                    $row->inventory_types = $this->basic_model->select_where('inventory_types', 'id', $row->inventory_types_id)->row()->name;
                }
                
                $d->inventory = $inventory;

                $data['data'] = $d;

                $data['page'] = $this->load->view('admin/pages/lend/details', $data, true);
                $this->load->view('admin/index', $data);
            }
        } else
            redirect('admin');
    }

    public function lend_approve() {
        if ($this->check_admin_login()) {
            if ($this->uri->segment(2) == 'lend_approve') 
                show_404();
            else {
                $data = $this->controller_attr;
                $id = $this->uri->segment(4);

                $data_update = array(
                    'status' => 1
                );

                $update = $this->basic_model->update('lends',$data_update,'id',$id);
                if($update) {
                    $user_id = $this->basic_model->select_where('user_lends', 'lend_id', $id)->row()->users_id;
                    $data_insert = array(
                        'type' => 2,
                        'sent_status' => 0,
                        'created_at' => strtotime(date('Y-m-d H:i:s', now())),
                        'user_id' => $user_id,
                        'lend_id' =>$id
                        );
                    $this->basic_model->insert_all('user_notifications', $data_insert);

                    $this->log('2', 'You has approved lend of lend id : ' . $id);
                    redirect('admin/lend');
                }
                else
                    redirect('admin/lend');
            }
        } else
            redirect('admin');
    }

    public function lend_returned() {
        if ($this->check_admin_login()) {
            if ($this->uri->segment(2) == 'lend_returned') 
                show_404();
            else {
                $data = $this->controller_attr;
                $id = $this->uri->segment(4);

                $data_update = array(
                    'status' => 2
                );

                $update = $this->basic_model->update('lends',$data_update,'id',$id);
                if($update) {
                    $lend_inventory = $this->basic_model->select_where('lend_inventories', 'lend_id', $id)->result();

                    $data_update_2 = array(
                        'available' => 1
                    );

                    foreach ($lend_inventory as $row) {
                        $update = $this->basic_model->update('inventories',$data_update_2,'id',$row->inventory_id);
                    }
                    
                    $user_id = $this->basic_model->select_where('user_lends', 'lend_id', $id)->row()->users_id;
                    $data_insert = array(
                        'type' => 3,
                        'sent_status' => 0,
                        'created_at' => strtotime(date('Y-m-d H:i:s', now())),
                        'user_id' => $user_id,
                        'lend_id' =>$id
                        );
                    $this->basic_model->insert_all('user_notifications', $data_insert);

                    $this->log('2', 'You has confirmed lend return of lend id : ' . $id);
                    redirect('admin/lend');
                }
                else
                    redirect('admin/lend');
            }
        } else
            redirect('admin');
    }

    public function logs() {
        if ($this->check_admin_login()) {
            $data = $this->controller_attr;

            $data['function_parent'] = 'lend';
            $data['function_parent_name'] = 'Lend';
            $data['function_sub'] = 'lend';
            $data['function_sub_name'] = 'Lend';
            $data['function'] = 'lend';
            $data['function_name'] = 'Lend';
            $data['function_add'] = 'add_lend';
            $data['function_delete'] = 'delete_lend';
            $data['function_edit'] = 'edit_lend';
            $data['function_get_data'] = 'get_lend';

            $d = $this->basic_model->select_where_order('logs', 'users_id', $this->session->userdata['admin']['id'], 'created_at', 'DESC');

            foreach ($d as $row) {
                $row->created_at = date('d F Y', $row->created_at);
                if($row->type_id == 1) {
                    $row->type = 'Create';
                } else if ($row->type_id == 2) {
                    $row->type = 'Update';
                } else {
                    $row->type = 'Delete';
                }
            }

            $data['data'] = $d;

            $data['page'] = $this->load->view('admin/pages/logs/index', $data, true);
            $this->load->view('admin/index', $data);
        } else
            redirect('admin');
    }

    public function click_notif() {
        $user_id = $this->input->post('id');

        $data = $this->basic_model->select_where_double('user_notifications', 'user_id', $user_id, 'sent_status', 0)->result();

        $data_update = array(
            'sent_status' => 1
            );

        $count = 0;

        foreach ($data as $row) {
            $update = $this->basic_model->update('user_notifications',$data_update,'id',$row->id);
            $count++;
        }

        if($count){
            $this->returnJson(array('status'=>'success','data' => true));
        }
        else{
            $this->returnJson(array('status'=>'success','message'=>'Data Not Found'));
        }
    }
}
