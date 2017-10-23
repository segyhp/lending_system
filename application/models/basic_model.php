<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**/
/* Copyright Code &copy; 2016 <a href="dwiagungprastya@gmail.com">Dwi Agung Prastya</a>.</strong> All rights
    reserved.  */
/**/

class Basic_model extends CI_Model {

    function __construct() {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
    }

    function get_count($table) {
        $this->load->database('default', TRUE);
        $this->db->select('*');
        $this->db->from($table);
        return $this->db->get()->num_rows();
    }

    function select_all($table) {
        $this->load->database('default', TRUE);
        $this->db->select('*');
        $this->db->from($table);
        $data = $this->db->get();
        return $data->result();
    }

    function select_where($table, $column, $where) {
        $this->load->database('default', TRUE);
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where($column, $where);
        $data = $this->db->get();
        return $data;
    }

    function select_where_order($table, $column, $where, $order_by, $order) {
        $this->load->database('default', TRUE);
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where($column, $where);
        $this->db->order_by($order_by, $order);
        $data = $this->db->get();
        return $data->result();
    }

    function select_where_array($table, $where) {
        $this->load->database('default', TRUE);
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where($where);
        $data = $this->db->get();
        return $data;
    }

    function insert_all($table, $data) {
        $this->load->database('default', TRUE);
        if (!$this->db->insert($table, $data))
            return FALSE;
        $data["id"] = $this->db->insert_id();
        return (object) $data;
    }

    function insert_all_batch($table, $data) {
        $this->load->database('default', TRUE);
        if (!$this->db->insert_batch($table, $data))
            return FALSE;
        $data["id"] = $this->db->insert_id();
        return (object) $data;
    }

    function update($table, $data, $column, $where) {
        $this->load->database('default', TRUE);
        $this->db->where($column, $where);
        return $this->db->update($table, $data);
    }

    function delete($table, $column, $where) {
        $this->load->database('default', TRUE);
        $this->db->where($column, $where);
        return $this->db->delete($table);
    }

    function select_all_limit($table, $limit) {
        $this->load->database('default', TRUE);
        $this->db->select('*');
        $this->db->order_by('id', 'DESC');
        $data = $this->db->get($table, $limit);
        return $data->result();
    }

    function select_all_order($table, $order_by, $order) {
        $this->load->database('default', TRUE);
        $this->db->select('*');
        $this->db->from($table);
        $this->db->order_by($order_by, $order);
        $data = $this->db->get();
        return $data->result();
    }

    function select_all_order_limit($table, $limit, $order_by, $order_type) {
        $this->load->database('default', TRUE);
        $this->db->select('*');
        $this->db->order_by($order_by, $order_type);
        $data = $this->db->get($table, $limit);
        return $data->result();
    }

    function select_where_double($table, $column1, $where1, $column2, $where2) {
        $this->load->database('default', TRUE);
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where($column1, $where1);
        $this->db->where($column2, $where2);
        $data = $this->db->get();
        return $data;
    }

    function select_where_double_order($table, $column1, $where1, $column2, $where2, $order_by, $order_type) {
        $this->load->database('default', TRUE);
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where($column1, $where1);
        $this->db->where($column2, $where2);
        $this->db->order_by($order_by, $order_type);
        $data = $this->db->get();
        return $data;
    }
}
