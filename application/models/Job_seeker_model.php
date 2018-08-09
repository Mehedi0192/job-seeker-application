<?php if (!defined('BASEPATH')) 	exit('Hacking Attempt : Get Out of the system ..!');

class Job_seeker_model extends CI_Model {

	var $table = 'job_seeker';
	var $column_order = array(null, 'name', 'gender', 'educational_qualification', 'experience_year', 'contact_no');
	var $column_search = array('name', 'gender', 'educational_qualification', 'experience_year', 'contact_no');
	var $order = array('job_seeker.id' => 'DESC');

	private function search() {
		$this->db->select('bn_district_name, bn_upazila_name, general_category.bn_category_name as gc_name, professional_category.bn_category_name as pc_name, skill_level.position, skill_level.bn_position, job_seeker.*');
		$this->db->from($this->table);
		$this->db->join('district', 'job_seeker.district_id=district.id', 'LEFT');
		$this->db->join('upazila', 'job_seeker.upazila_id=upazila.id', 'LEFT');
		$this->db->join('general_category', 'job_seeker.general_category_id=general_category.id', 'LEFT');
		$this->db->join('professional_category', 'job_seeker.professional_category_id=professional_category.id', 'LEFT');
		$this->db->join('skill_level', 'job_seeker.skill_level_id=skill_level.id', 'LEFT');
		$i = 0;
		foreach ($this->column_search as $col) { // loop column 
			if (isset($_POST['search']['value']) && !empty($_POST['search']['value'])) {
				$_POST['search']['value'] = $_POST['search']['value'];
			} else {
				$_POST['search']['value'] = '';
			}
			if ($_POST['search']['value']) { // if datatable send POST for search
				if ($i === 0) { // first loop
					$this->db->group_start();
					$this->db->like($col, $_POST['search']['value'], 'after');
				} else {
					$this->db->or_like($col, $_POST['search']['value'], 'after');
				}
				if (count($this->column_search) - 1 == $i) { //last loop
					$this->db->group_end(); //close bracket
				}
			}
			$i++;
		}

		if (isset($_POST['order'])) { // here order processing
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if (isset($this->order)) {
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	public function count_filtered() {
		$this->search();
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all() {
		$this->db->from($this->table);
		return $this->db->count_all_results();
	}

	public function get_all() {
		$this->search();

		if (isset($_POST['length']) && $_POST['length'] < 1) {
			$_POST['length'] = '10';
		} else {
			$_POST['length'] = $_POST['length'];
		}

		if (isset($_POST['start']) && $_POST['start'] > 1) {
			$_POST['start'] = $_POST['start'];
		}

		$this->db->limit($_POST['length'], $_POST['start']);
		$order = $this->order;
		$this->db->order_by(key($order), $order[key($order)]);
		$query = $this->db->get();
		return $query->result();
	}

	public function get_by_id($id) {
		$query = $this->db->get_where($this->table, array('md5(id)' => $id));
		return $query->row();
	}

	public function save($data) {
		$this->db->insert($this->table, $data);

		if ($this->db->affected_rows() == 1) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

	public function update($data, $id) {
		$this->db->update($this->table, $data, array('md5(id)' => $id));

		if ($this->db->affected_rows() == 1) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

	public function delete($id) {
		$this->db->delete($this->table, array('md5(id)' => $id));

		if ($this->db->affected_rows() == 1)
			return TRUE;
		else
			return FALSE;
	}
	
	// Delete all expired seekers
	public function delete_expired_seeker () {
		$this->db->query("DELETE FROM tbl_job_seeker WHERE DATE_FORMAT(created_at,'%Y-%m-%d') <= '". expired()."' ");
		$dir = "./assets/filemanager/job_seeker/";
		foreach (glob($dir . "*") as $file) {
			if (filemtime($file) < time() - 60*60*24*100) { // 100 days
				unlink($file);
			}
		}
	}	
	
	// Script for site frontend
	
	public function profile($id) {
		return $this->db->query("SELECT * FROM view_job_seeker WHERE id='".$id."' ")->row();	
	}
	
	public function seekers ($start=NULL, $per_page=NULL) {
		if ($start == NULL && $per_page == NULL) {
			$query = $this->db->query("SELECT * FROM view_job_seeker WHERE status='Verified' ORDER BY id DESC");	
			return $query->num_rows();				
		} else {
			$query =  $this->db->query("SELECT * FROM view_job_seeker WHERE status='Verified' ORDER BY id DESC LIMIT $start, $per_page");	
			return $query->result();
		}		
	}
	
	public function general ($category=NULL, $skill=NULL, $start=NULL, $per_page=NULL) {
		if ($start == NULL && $per_page == NULL) {
			$query = $this->db->query("SELECT * FROM view_job_seeker WHERE status='Verified' && general_category_id='".$category."' && skill_level_id='".$skill."' ORDER BY id DESC");	
			return $query->num_rows();				
		} else {
			$query =  $this->db->query("SELECT * FROM view_job_seeker WHERE status='Verified' && general_category_id='".$category."' && skill_level_id='".$skill."' ORDER BY id DESC LIMIT $start, $per_page");	
			return $query->result();
		}	
	}
		
	public function professional ($category=NULL, $start=NULL, $per_page=NULL) {
		if ($start == NULL && $per_page == NULL) {
			$query = $this->db->query("SELECT * FROM view_job_seeker WHERE status='Verified' && professional_category_id='".$category."' ORDER BY id DESC");	
			return $query->num_rows();				
		} else {
			$query =  $this->db->query("SELECT * FROM view_job_seeker WHERE status='Verified' && professional_category_id='".$category."' ORDER BY id DESC LIMIT $start, $per_page");	
			return $query->result();
		}	
	}
	
	public function searching ($district=NULL, $upazila=NULL, $start=NULL, $per_page=NULL) {
		if ($start == NULL && $per_page == NULL) {
			$query = $this->db->query("SELECT * FROM view_job_seeker WHERE status='Verified' && district_id='".$district."' ORDER BY id DESC");	
			return $query->num_rows();				
		} else {
			$query =  $this->db->query("SELECT * FROM view_job_seeker WHERE status='Verified' && district_id='".$district."' ORDER BY id DESC LIMIT $start, $per_page");	
			if($upazila !=NULL) {
				$query =  $this->db->query("SELECT * FROM view_job_seeker WHERE status='Verified' && district_id='".$district."' && upazila_id='".$upazila."' ORDER BY id DESC LIMIT $start, $per_page");	
			}
			return $query->result();
		}
	}
	
	public function search_by_key ($searchKey=NULL, $start=NULL, $per_page=NULL) {
		if ($start == NULL && $per_page == NULL) {
			$query = $this->db->query("SELECT * FROM view_job_seeker WHERE status='Verified' && name LIKE '%".$searchKey."%' ORDER BY id DESC");	
			return $query->num_rows();				
		} else {
			$query =  $this->db->query("SELECT * FROM view_job_seeker WHERE status='Verified' && name LIKE '%".$searchKey."%' ORDER BY id DESC LIMIT $start, $per_page");	
			return $query->result();
		}
	}
	
}
