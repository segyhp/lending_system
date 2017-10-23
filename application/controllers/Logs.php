<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logs extends MY_Controller {
	function __construct() {
        parent::__construct();
        $count = $this->total_lend_late_return();
        $late = $this->lend_late_return();
        $notif = $this->get_all_notif_member();
        $total_notif = $this->total_notif_member();
        $this->construct_inventory();
        $this->controller_attr = array('controller' => 'logs', 'controller_name' => 'Logs', 'total_lend_late' => $count, 'lend_late' => $late, 'notif' => $notif, 'total_notif' => $total_notif);
    }

	public function index()
	{
		if ($this->check_member_login()) {
            $data = $this->controller_attr;

            $d = $this->basic_model->select_where_order('logs', 'users_id', $this->session->userdata['member']['id'], 'created_at', 'DESC');

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

            $data['page'] = $this->load->view('member/pages/logs/index', $data, true);
            $this->load->view('member/index', $data);
        } else {
            redirect('login');
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
