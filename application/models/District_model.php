<?php if (!defined('BASEPATH')) 	exit('Hacking Attempt : Get Out of the system ..!');

class District_model extends CI_Model {

	var $table = 'district';
	
	public function index () {
		$this->db->select('*');
		$this->db->from($this->table);
		return $this->db->get()->result();				
	}
	
	public function get_by_id($id) {
		$query = $this->db->get_where($this->table, array('md5(id)' => $id));
		return $query->row();
	}
	
}
