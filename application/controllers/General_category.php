<?php if (!defined('BASEPATH')) 	exit('Hacking Attempt: Get out of the system ..!');

class General_category extends CI_Controller {

	var $dir = 'admin/general_category/';
	var $breadcrumb = 'General Category';

	public function __construct() {
		parent:: __construct();
		if ($this->session->userdata('isLogin') == FALSE) { // Check user session
			goodbye(); // It's active when hacking attempt.
		}
		checkAccess(); // Check User Access Permission
	}

	public function index() {
		$data['breadcrumb'] = $this->breadcrumb;

		$this->load->view('admin/templates/header', $data);
		$this->load->view($this->dir . 'view');
		$this->load->view('admin/templates/footer');
	}

	public function get_all() {
		$list = $this->general_category_model->get_all();
		$data = array();
		$i = $_POST['start'];
		foreach ($list as $item) {
			$i++;
			$row = array();
			$row[] = sprintf("%02d", $i);
			$row[] = $item->category_name;
			$row[] = $item->bn_category_name;
			
			$action = "<form method='post' action='".base_url()."general_category/edit' class='actionForm' onClick='return altEdit();' >"
						."<input type ='hidden' name='id' value='".md5($item->id)."' />"
						."<button type='submit' class='btn btn-warning btn-xs' title='Edit'><i class='fa fa-edit'></i></button>"
					. "</form>";
			
			if(!existed('tbl_job_seeker', 'general_category_id', $item->id)) {
				$action .= "<form method='post' action='".base_url()."general_category/delete' class='actionForm' onClick='return altDelete();' >"
						."<input type ='hidden' name='id' value='".md5($item->id)."' />"
						."<button type='submit' class='btn btn-danger btn-xs' title='Delete'><i class='fa fa-trash-o'></i></button>"
					. "</form>";
			}

			$row[] = $action;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->general_category_model->count_all(),
			"recordsFiltered" => $this->general_category_model->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function add() {
		$data['breadcrumb'] = $this->breadcrumb;

		$this->load->view('admin/templates/header', $data);
		$this->load->view($this->dir . 'add');
		$this->load->view('admin/templates/footer');
	}

	public function save() {
		// field name, error message, validation rules
		$this->form_validation->set_rules('category_name', 'category name', 'trim|required|is_unique[general_category.category_name]|xss_clean');
		$this->form_validation->set_rules('bn_category_name', 'bangla category name', 'trim|required|is_unique[general_category.bn_category_name]|xss_clean');

		$this->form_validation->set_error_delimiters('<span class="red">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span class='red'>" . exception() . "</span>", 5);
		} else {
			$data = array(
				'category_slug' => slug($this->input->post('category_name')),
				'category_name' => $this->input->post('category_name'),
				'bn_category_name' => $this->input->post('bn_category_name'),
			);

			if ($this->general_category_model->save($data)) {
				$this->form_validation->resetForm();
				$this->session->set_tempdata("msg", "<span class='success'>" . saved_success() . "</span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span class='red'>" . exception() . "</span>", 5);
			}
		}
		$this->add();
	}

	public function edit() {
		$id = $this->input->post('id');
		$data['breadcrumb'] = $this->breadcrumb;
		$data['edit'] = $this->general_category_model->get_by_id($id);

		$this->load->view('admin/templates/header', $data);
		$this->load->view($this->dir . 'edit');
		$this->load->view('admin/templates/footer');
	}

	public function update() {
		$id = $this->input->post('id');
		// field name, error message, validation rules
		$this->form_validation->set_rules('category_name', 'category name', 'trim|required|xss_clean');
		$this->form_validation->set_rules('bn_category_name', 'bangla category name', 'trim|required|xss_clean');

		$this->form_validation->set_error_delimiters('<span class="red">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span class='red'>" . exception() . "</span>", 5);
			$this->edit();
		} else {
			$data = array(
				'category_slug' => slug($this->input->post('category_name')),
				'category_name' => $this->input->post('category_name'),
				'bn_category_name' => $this->input->post('bn_category_name'),
			);

			if ($this->general_category_model->update($data, $id)) {
				$this->form_validation->resetForm();
				$this->session->set_tempdata("msg", "<span class='success'>" . updated_success() . "</span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span class='red'>" . exception() . "</span>", 5);
			}
			redirect('general_category');
		}
	}

	public function delete() {
		$id = $this->input->post('id');
		if ($this->general_category_model->delete($id) == FALSE) {
			$this->session->set_tempdata("msg", "<span class='red'>" . exception() . "</span>", 5);
		} else {
			$this->session->set_tempdata("msg", "<span class='success'>" . deleted_success() . "</span>", 5);
		}
		redirect('general_category');
	}
	
}
