<?php if (!defined('BASEPATH')) 	exit('Hacking Attempt: Get out of the system ..!');

class Advertisement extends CI_Controller {

	var $dir = 'admin/advertisement/';
	var $file_path = 'advertisement';
	var $breadcrumb = 'Advertisement';

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
		$list = $this->advertisement_model->get_all();
		$data = array();
		$i = $_POST['start'];
		foreach ($list as $item) {
			$i++;
			$row = array();
			$row[] = sprintf("%02d", $i);
			$row[] = $item->company_name;
			$row[] = $item->website;
			$row[] = $item->ads_position;
			$row[] = "<img src='".base_url().'assets/filemanager/advertisement/'.$item->file_name."' width='50px' class='img-responsive' /> " ;
			
			$action = "<form method='post' action='".base_url()."advertisement/edit' class='actionForm' onClick='return altEdit();' >"
							."<input type ='hidden' name='id' value='".md5($item->id)."' />"
							."<button type='submit' class='btn btn-warning btn-xs' title='Edit'><i class='fa fa-edit'></i></button>"
						. "</form>";
			
			$action .= "<form method='post' action='".base_url()."advertisement/delete' class='actionForm' onClick='return altDelete();' >"
						."<input type ='hidden' name='id' value='".md5($item->id)."' />"
						."<button type='submit' class='btn btn-danger btn-xs' title='Delete'><i class='fa fa-trash-o'></i></button>"
					. "</form>";
			
			$row[] = $action;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->advertisement_model->count_all(),
			"recordsFiltered" => $this->advertisement_model->count_filtered(),
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
		$this->form_validation->set_rules('company_name', 'company name', 'trim|xss_clean');
		$this->form_validation->set_rules('website', 'website', 'trim|xss_clean');
		$this->form_validation->set_rules('ads_position', 'ads position', 'trim|required|xss_clean');
		$this->form_validation->set_rules('website_link', 'website_link', 'trim|xss_clean');

		$this->form_validation->set_error_delimiters('<span class="error">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
		} else {
			$this->master_model->do_upload($this->file_path, time()); // Call file upload function

			if ($this->master_model->upload->do_upload('userfile')) {
				$file_name = $this->upload->data('file_name');
			} else {
				$file_name = '';
			}

			$data = array(
				'company_name' => $this->input->post('company_name'),
				'website' => $this->input->post('website'),
				'ads_position' => $this->input->post('ads_position'),
				'created_at' => date('Y-m-d H:i:s'),
				'file_name' => $file_name
			);

			if ($this->advertisement_model->save($data)) {
				$this->form_validation->resetForm();
				$this->session->set_tempdata("msg", "<span class='success'>" . saved_success() . "</span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			}
		}
		$this->add();
	}

	public function edit() {
		$id = $this->input->post('id');
		$data['breadcrumb'] = $this->breadcrumb;
		$data['edit'] = $this->advertisement_model->get_by_id($id);

		$this->load->view('admin/templates/header', $data);
		$this->load->view($this->dir . 'edit');
		$this->load->view('admin/templates/footer');
	}

	public function update() {
		$id = $this->input->post('id');
		// field name, error message, validation rules
		$this->form_validation->set_rules('company_name', 'company name', 'trim|xss_clean');
		$this->form_validation->set_rules('website', 'website', 'trim|xss_clean');
		$this->form_validation->set_rules('ads_position', 'ads position', 'trim|required|xss_clean');
		$this->form_validation->set_rules('website_link', 'website_link', 'trim|xss_clean');

		$this->form_validation->set_error_delimiters('<span class="red">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			$this->edit();
		} else {
			$this->master_model->do_upload($this->file_path, time()); // Call file upload function

			if ($this->master_model->upload->do_upload('userfile')) {
				$file_name = $this->upload->data('file_name');
				$this->master_model->delete_file($this->file_path, $this->input->post('old_file'));
			} else {
				$file_name = $this->input->post('old_file');
			}

			$data = array(
				'company_name' => $this->input->post('company_name'),
				'website' => $this->input->post('website'),
				'ads_position' => $this->input->post('ads_position'),
				'created_at' => date('Y-m-d H:i:s'),
				'file_name' => $file_name
			);

			if ($this->advertisement_model->update($data, $id)) {
				$this->form_validation->resetForm();
				$this->session->set_tempdata("msg", "<span class='success'>" . updated_success() . "</span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			}
			redirect('advertisement');
		}
	}

	public function delete() {
		$id = $this->input->post('id');
		$client = $this->advertisement_model->get_by_id($id);
		if ($this->advertisement_model->delete($id) == FALSE) {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
		} else {
			$this->master_model->delete_file($this->file_path, $client->file_name);
			$this->session->set_tempdata("msg", "<span class='success'>" . deleted_success() . "</span>", 5);
		}
		redirect('advertisement');
	}

}
