<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends MY_Controller {
	function __construct() {
	    parent::__construct();
        $this->construct_inventory();
	    $this->controller_attr = array('controller' => 'login', 'controller_name' => 'Login');
	}

	public function index()
	{
		if ($this->check_member_login()) {
            redirect('home');
        } else {
        	$data = $this->controller_attr;
            $this->load->view('member/pages/main/login_form', $data);
        }
	}

	public function validate_login() {
        $data['function'] = 'validate_login';
        $data['function_name'] = 'Validate Login';

        if ($this->check_member_login()) {
            redirect('admin');
        } else {
            $email = $this->input->post('email');
            $password = $this->input->post('password');

            $user = $this->basic_model->select_where('users', 'email', $email)->row();

            if ($user && $user->user_roles_id == 3) {
                if ($password == $this->encrypt->decode($user->password)) {
                    $data = array(
                        'id' => $user->id,
                        'email' => $user->email,
                        'name' => $user->first_name . ' ' . $user->last_name,
                        'role' => $user->user_roles_id
                    );

                    $this->session->set_userdata('member', $data);

                    $this->returnJson(array('status' => 'success', 'message' => 'Login Success', 'redirect' => 'home'));
                } else {
                    $this->returnJson(array('status' => 'error', 'message' => 'Wrong password'));
                }
            } else {
                $this->returnJson(array('status' => 'error', 'message' => 'Email not registered'));
            }
        }
    }
}
