<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Change_password extends MY_Controller {
	function __construct() {
        parent::__construct();
        $count = $this->total_lend_late_return();
        $late = $this->lend_late_return();
        $notif = $this->get_all_notif_member();
        $total_notif = $this->total_notif_member();
        $this->construct_inventory();
        $this->controller_attr = array('controller' => 'change_password', 'controller_name' => 'Change password', 'total_lend_late' => $count, 'lend_late' => $late, 'notif' => $notif, 'total_notif' => $total_notif);
    }

	public function index()
	{
		if ($this->check_member_login()) {
            $data = $this->controller_attr;

            $data['page'] = $this->load->view('member/pages/change_password/index', $data, true);
            $this->load->view('member/index', $data);
        } else {
            redirect('login');
        }
	}

    public function edit_password() {
        $data_user = $this->basic_model->select_where('users', 'id', $this->session->userdata['member']['id'])->row();

        if ($this->input->post('currentpassword') == $this->encrypt->decode($data_user->password) && $this->input->post('newpassword') == $this->input->post('renewpassword')) {
            if (strlen($this->input->post('newpassword')) < 6) {
                redirect('change_password?msg=error&length=false');
            } else {
                $data = array(
                    'password' => $this->encrypt->encode($this->input->post('newpassword')),
                    'modified_at' => strtotime(date('Y-m-d H:i:s', now()))
                );

                $this->basic_model->update('users', $data, 'id', $this->session->userdata['member']['id']);
                $this->logm('2', 'You has changed your password');
                redirect('change_password?msg=success');
            }
        } else {
            redirect('change_password?msg=error&length=');
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
