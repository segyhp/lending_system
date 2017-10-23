<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends MY_Controller {
	function __construct() {
        parent::__construct();
        $count = $this->total_lend_late_return();
        $late = $this->lend_late_return();
        $notif = $this->get_all_notif_member();
        $total_notif = $this->total_notif_member();
        $this->construct_inventory();
        $this->controller_attr = array('controller' => 'profile', 'controller_name' => 'Profile', 'total_lend_late' => $count, 'lend_late' => $late, 'notif' => $notif, 'total_notif' => $total_notif);
    }

	public function index()
	{
		if ($this->check_member_login()) {
            $data = $this->controller_attr;

            $data_user = $this->basic_model->select_where('users', 'id', $this->session->userdata['member']['id'])->row();

            $data_user->role = $this->basic_model->select_where('user_roles', 'id', $data_user->user_roles_id)->row()->name;
            $data['user'] = $data_user;

            $data['page'] = $this->load->view('member/pages/profile/index', $data, true);
            $this->load->view('member/index', $data);
        } else {
            redirect('login');
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
            'id' => $this->session->userdata['member']['id'],
            'email' => $this->session->userdata['member']['email'],
            'name' => $this->input->post('first_name') . ' ' . $this->input->post('last_name'),
            'role' => $this->session->userdata['member']['role']
        );
        $this->session->set_userdata('member', $data_user);

        if ($this->input->post('first_name') && $this->input->post('last_name')) {
            $update = $this->basic_model->update('users', $data_update, 'id', $id);
            if ($update) {
                $this->logm('2', 'You has updated your profiles');
                redirect('profile?update=true');
            } else
                redirect('profile?update=error');
        } else
            redirect('profile?update=error');
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
