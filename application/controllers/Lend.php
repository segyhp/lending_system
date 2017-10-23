<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lend extends MY_Controller {
	function __construct() {
        parent::__construct();
        $count = $this->total_lend_late_return();
        $late = $this->lend_late_return();
        $notif = $this->get_all_notif_member();
        $total_notif = $this->total_notif_member();
        $this->construct_inventory();
        $this->controller_attr = array('controller' => 'lend', 'controller_name' => 'Lend', 'total_lend_late' => $count, 'lend_late' => $late, 'notif' => $notif, 'total_notif' => $total_notif);
    }

	public function index()
	{
		if ($this->check_member_login()) {
            $data = $this->controller_attr;

            $inventory = $this->basic_model->select_where_order('inventories', 'available', 1, 'description', 'DESC');

            foreach ($inventory as $row) {
                $row->acquisition = date('d F Y', $row->acquisition);
                $row->category = $this->basic_model->select_where('inventory_categories', 'id', $row->inventory_categories_id)->row()->name;
                $row->types = $this->basic_model->select_where('inventory_types', 'id', $row->inventory_types_id)->row()->name;
                $row->status = $this->basic_model->select_where('inventory_status', 'id', $row->inventory_status_id)->row()->name;
            }

            $data['inventory'] = $inventory;

            $data['page'] = $this->load->view('member/pages/lend/index', $data, true);
            $this->load->view('member/index', $data);
        } else {
            redirect('login');
        }
	}

    public function add_lend(){
        $data = $this->controller_attr;

        $data_insert = array(
            'lend_type_id' => $this->input->post('lend_type'),
            'lend_at' => strtotime($this->input->post('lend_at') . '00:00:00'),
            'returned_at' => strtotime($this->input->post('returned_at') . '00:00:00'),
            'purpose' => $this->input->post('purpose')
        );
        
        if($this->input->post('lend_type') && $this->input->post('lend_at') && $this->input->post('purpose') && $this->input->post('category')){
            if($data['total_lend_late'] > 0)
                $this->returnJson(array('status' => 'error','message' => 'Please Process Your Lent Late Return Before!'));
            $insert = $this->basic_model->insert_all('lends',$data_insert);
            if($insert) {
                foreach ($this->input->post('category') as $row) {
                    $data_insert_2 = array(
                        'lend_id' => $insert->id,
                        'inventory_id' => $row
                    );

                    $data_update = array(
                        'available' => 2
                    );
                    $update = $this->basic_model->update('inventories',$data_update,'id',$row);
                    $insert_lend_inventory = $this->basic_model->insert_all('lend_inventories',$data_insert_2);
                }

                $data_insert_3 = array(
                    'users_id' => $this->session->userdata['member']['id'],
                    'lend_id' => $insert->id
                );
                $insert_user_lend = $this->basic_model->insert_all('user_lends',$data_insert_3);

                $this->set_notif_admin($insert->id);

                $this->logm('1', 'You has request lend, your lend id : ' . $insert->id);
                $this->returnJson(array('status' => 'success','message' => 'Insert Success','redirect' => 'home'));
            }
            else
                $this->returnJson(array('status'=>'error','message'=>'Insert Failed'));
        }
        else
            $this->returnJson(array('status' => 'error','message' => 'Please Complete The Form'));
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
