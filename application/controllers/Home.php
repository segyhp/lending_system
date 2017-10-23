<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {
	function __construct() {
        parent::__construct();
        $count = $this->total_lend_late_return();
        $late = $this->lend_late_return();
        $notif = $this->get_all_notif_member();
        $total_notif = $this->total_notif_member();
        $this->construct_inventory();
        $this->controller_attr = array('controller' => 'home', 'controller_name' => 'Home', 'total_lend_late' => $count, 'lend_late' => $late, 'notif' => $notif, 'total_notif' => $total_notif);
    }

	public function index()
	{
		if ($this->check_member_login()) {
            $data = $this->controller_attr;

            $user_lend = $this->basic_model->select_where('user_lends', 'users_id', $this->session->userdata['member']['id'])->result();

            $d = array();
            $i = 0;
            foreach ($user_lend as $row) {
                $temp = $this->basic_model->select_where('lends', 'id', $row->lend_id)->row();
                $d[$i] = (object) array();
                $d[$i] = $temp;
                $i++;
            }

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

            usort( $d, function( $a, $b) {  
                if( $a->id == $b->id) 
                    return 0; 
                return $a->id < $b->id ? 1 : -1; // Might need to switch 1 and -1
            });

            $data['lend'] = $d;

            $data['page'] = $this->load->view('member/pages/main/dashboard', $data, true);
            $this->load->view('member/index', $data);
        } else {
            redirect('login');
        }
	}

    public function lend_details() {
        if ($this->check_member_login()) {
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
                    $inventory[$i] = (object) array();
                    $inventory[$i] = $temp;
                    $i++;
                }

                foreach ($inventory as $row) {
                    $row->inventory_types = $this->basic_model->select_where('inventory_types', 'id', $row->inventory_types_id)->row()->name;
                }
                
                $d->inventory = $inventory;

                $data['data'] = $d;

                $data['page'] = $this->load->view('member/pages/main/lend_details', $data, true);
                $this->load->view('member/index', $data);
            }
        } else
            redirect('home');
    }

	public function logout() {
        $data['function'] = 'logout';
        $data['function_name'] = 'Logout';

        if ($this->check_member_login()) {
            $this->session->unset_userdata('member');

            redirect('home');
        } else {
            redirect('home');
        }
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
