<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
	function __construct() {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
        $this->load->model('basic_model');
    }

    function check_admin_login() {
        if ($this->session->userdata('admin') == FALSE) {
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function check_member_login() {
        if ($this->session->userdata('member') == FALSE) {
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function generate_random_string($length = 6) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    function log($type_id, $log_description) {
        $user_id = $this->session->userdata['admin']['id'];
        
        $data_log = array(
            'type_id' => $type_id,
            'users_id' => $user_id,
            'description' => $log_description,
            'created_at' => strtotime(date('Y-m-d H:i:s', now()))
        );
        $this->basic_model->insert_all('logs', $data_log);
    }

    function logm($type_id, $log_description) {
        $user_id = $this->session->userdata['member']['id'];
        
        $data_log = array(
            'type_id' => $type_id,
            'users_id' => $user_id,
            'description' => $log_description,
            'created_at' => strtotime(date('Y-m-d H:i:s', now()))
        );
        $this->basic_model->insert_all('logs', $data_log);
    }

    function returnJson($message) {
        echo json_encode($message);
        exit;
    }

    function lend_late_return() {
        $user_lend = $this->basic_model->select_where('user_lends', 'users_id', $this->session->userdata['member']['id'])->result();

        $d = array();
        $i = 0;
        foreach ($user_lend as $row) {
            $temp = $this->basic_model->select_where('lends', 'id', $row->lend_id)->row();
            if($temp->returned_at != 0)
            {
                if(strtotime(date('m/d/y',now()).' 00:00:00') > $temp->returned_at  && $temp->status == 1) {
                    $d[$i] = (object) array();
                    $d[$i] = $temp;
                }
            }
            $i++;
        }

        if(count($d) > 0) {
            foreach ($d as $row) {
                $row->lend_at = date('d F Y', $row->lend_at);
                $row->returned_at = date('d F Y', $row->returned_at);

                if ($row->lend_type_id == 1) 
                    $row->lend_type = 'Temporary';
                else 
                    $row->lend_type = 'Permanent';
            }
        }

        return $d;
    }

    function total_lend_late_return() {
        $user_lend = $this->basic_model->select_where('user_lends', 'users_id', $this->session->userdata['member']['id'])->result();

        $d = array();
        $i = 0;
        foreach ($user_lend as $row) {
            $temp = $this->basic_model->select_where('lends', 'id', $row->lend_id)->row();
            if(strtotime(date('m/d/y',now()).' 00:00:00') > $temp->returned_at  && $temp->status == 1) {
                    $d[$i] = (object) array();
                    $d[$i] = $temp;
            }
            $i++;
        }
        
        return count($d);
    }

    function get_timeago($ptime) {
        $estimate_time = time() - $ptime;

        if($estimate_time < 1) {
            return 'just now';
        }

        $condition = array(
            12 * 30 * 24 * 60 * 60 => 'year',
            30 * 24 * 60 * 60 => 'month',
            24 * 60 * 60 => 'day',
            60 * 60 => 'hour',
            60 => 'min',
            1 => 'second', 
        );

        foreach ($condition as $secs => $str) {
            $d = $estimate_time / $secs;

            if($d >= 1) {
                $r = round($d);
                return $r.' '.$str.($r>1 ? 's' : '').' ago';
            }
        }
    }

    function get_all_notif_admin() {
        if($this->session->userdata('admin') == FALSE) return $notif = array();
        else {
            $notif = $this->basic_model->select_where_order('user_notifications', 'user_id', $this->session->userdata['admin']['id'], 'created_at', 'DESC');

            foreach ($notif as $row) {
                $user_id = $this->basic_model->select_where('user_lends', 'lend_id', $row->lend_id)->row()->users_id;

                $row->user = $this->basic_model->select_where('users', 'id', $user_id)->row();
                $row->time = $this->get_timeago($row->created_at);
            }

            return $notif;
        }
    }

    function total_notif_admin() {
        if($this->session->userdata('admin') == FALSE) return 0;
        else {
            $notif = $this->basic_model->select_where_double('user_notifications', 'user_id', $this->session->userdata['admin']['id'], 'sent_status', 0)->result();

            return count($notif);
        }
    }

    function set_notif_admin($lend_id) {
        $admin_user = $this->basic_model->select_where('users', 'user_roles_id', 2)->result();

        foreach ($admin_user as $row) {
            $data_insert = array(
                'type' => 0,
                'sent_status' => 0,
                'created_at' => strtotime(date('Y-m-d H:i:s', now())),
                'user_id' => $row->id,
                'lend_id' =>$lend_id
                );

            $this->basic_model->insert_all('user_notifications', $data_insert);
        }

        $super_user = $this->basic_model->select_where('users', 'user_roles_id', 1)->result();

        foreach ($super_user as $row) {
            $data_insert = array(
                'type' => 0,
                'sent_status' => 0,
                'created_at' => strtotime(date('Y-m-d H:i:s', now())),
                'user_id' => $row->id,
                'lend_id' =>$lend_id
                );

            $this->basic_model->insert_all('user_notifications', $data_insert);
        }
    }

    function get_all_notif_member() {
        $notif = $this->basic_model->select_where_order('user_notifications', 'user_id', $this->session->userdata['member']['id'], 'created_at', 'DESC');

        foreach ($notif as $row) {
            $user_id = $this->basic_model->select_where('user_lends', 'lend_id', $row->lend_id)->row()->users_id;

            $row->user = $this->basic_model->select_where('users', 'id', $user_id)->row();
            $row->time = $this->get_timeago($row->created_at);
        }

        return $notif;
    }

    function total_notif_member() {
        $notif = $this->basic_model->select_where_double('user_notifications', 'user_id', $this->session->userdata['member']['id'], 'sent_status', 0)->result();

        return count($notif);
    }

    function construct_inventory() {
        $lend = $this->basic_model->select_all('lends');

        foreach ($lend as $row) {
            if($row->returned_at != 0)
            {
                if(strtotime(date('m/d/y',now()).' 00:00:00') > $row->returned_at  && $row->status == 0) {
                    $inventory = $this->basic_model->select_where('lend_inventories', 'lend_id', $row->id)->result();
                    foreach ($inventory as $data_row) {
                        $data_update = array(
                            'available' => 1
                        );
                        $update = $this->basic_model->update('inventories',$data_update,'id',$data_row->inventory_id);
                    }
                }
            }
        }
    }

}