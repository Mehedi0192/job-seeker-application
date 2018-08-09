<?php if (!defined('BASEPATH')) 	exit('Hacking Attempt: Get out of the system ..!');

class Job_seeker extends CI_Controller {

	var $dir = 'admin/job_seeker/';
	var $file_path = 'job_seeker';
	var $breadcrumb = 'Job Seekers';

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
		$list = $this->job_seeker_model->get_all();
		$data = array();
		$i = $_POST['start'];
		foreach ($list as $item) {
			
			if($item->category_type=='General') {
				$details =	'<strong> নামঃ </strong>'. $item->name.'<br/>';
				$details .=	'<strong> লিঙ্গঃ </strong>'. $item->gender.'<br/>';
				$details .=	'<strong> জন্মতারিখঃ </strong>'. $item->date_of_birth.'<br/>';
				$details .=	'<strong> ঠিকানাঃ </strong>'. nl2br($item->address).'<br/>';
				$details .=	'<strong> শিক্ষাগত যোগ্যতাঃ </strong>'. nl2br($item->educational_qualification).'<br/>';
				$details .=	'<strong> অভিজ্ঞতাঃ </strong>'. $item->experience_year.'<br/>';
				$details .=	'<strong> অভিজ্ঞতা বিস্তারিতঃ </strong>'. nl2br($item->experience_details).'<br/>';
				$details .=	'<strong> পদের নামঃ </strong>'. $item->gc_name.'<br/>';
				$details .=	'<strong> স্কিল লেভেলঃ </strong>'. $item->bn_position.'<br/>';
				$details .=	'<strong> যে এলাকায় চকুরি করতে ইচ্ছুকঃ </strong>'.$item->bn_district_name. '<br/>';
				$details .=	'<strong> ফোন / মোবাইল নাম্বারঃ </strong>'. $item->contact_no.'<br/>';
				$details .=	'<strong> ই-মেইল আইডিঃ </strong>'. $item->email.'<br/>';
				$details .=	'<strong> লাস্ট তিন ডিজিটঃ </strong>'. $item->contact_no_last_three.'<br/>';
			} else {
				$details =	'<strong> নামঃ </strong>'. $item->name.'<br/>';
				$details .=	'<strong> লিঙ্গঃ </strong>'. $item->gender.'<br/>';
				$details .=	'<strong> বয়সঃ </strong>'. $item->date_of_birth.'<br/>';
				$details .=	'<strong> ঠিকানাঃ </strong>'. nl2br($item->address).'<br/>';
				$details .=	'<strong> পেশাঃ </strong>'. $item->pc_name.'<br/>';
				$details .=	'<strong> যে এলাকায় চকুরি করতে ইচ্ছুকঃ </strong>'.$item->bn_upazila_name.', '.$item->bn_district_name. '<br/>';
				$details .=	'<strong> ফোন / মোবাইল নাম্বারঃ </strong>'. $item->contact_no.'<br/>';
			}
			
			
			$i++;
			$row = array();
			$row[] = sprintf("%02d", $i);
			$row[] = $item->name . ' <a href="#entry' . $item->id . '" role="button" class="label label-warning" data-toggle="modal">Details</a>' .
				'<div id="entry' . $item->id . '" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
							<h4 id="myModalLabel1"> '.$item->name.' </h4>
						</div>
						<div class="modal-body">
							' . $details . '
						</div>
					</div>
				</div>
			</div>';
			$row[] = $item->gender;
			$row[] = $item->contact_no;
			
			if ($item->category_type=='General') {
				$row[] = 'জেনারেল';
			} else {
				$row[] = 'পেশাজীবী';
			}
			
			$row[] = date('M d, Y', strtotime($item->created_at));
			$row[] = date('M d, Y', strtotime(deadline($item->created_at)));
			
			if ($item->status == 'Verified') {
				$row[] = '<span class="badge badge-success">Verified</span>';
			} else {
				$row[] = '<span class="badge badge-important">Pending</span>';
			}
			
			if($item->file_name) {
				$row[] = "<img src='".base_url().'assets/filemanager/job_seeker/'.$item->file_name."' width='25px' class='img-responsive' /> " ;
			} else {
				$row[] = '';
			}
			$action = "<form method='post' action='".base_url()."job_seeker/edit' class='actionForm' onClick='return altEdit();' >"
						."<input type ='hidden' name='id' value='".md5($item->id)."' />"
						."<button type='submit' class='btn btn-warning btn-xs' title='Edit'><i class='fa fa-edit'></i></button>"
					. "</form>";
			
			$action .= "<form method='post' action='".base_url()."job_seeker/delete' class='actionForm' onClick='return altDelete();' >"
						."<input type ='hidden' name='id' value='".md5($item->id)."' />"
						."<button type='submit' class='btn btn-danger btn-xs' title='Delete'><i class='fa fa-trash-o'></i></button>"
					. "</form>";
			
			if($item->status=='Pending') {
				$action .= "<form method='post' action='".base_url()."job_seeker/verified' class='actionForm' onClick='return altVerified();' >"
							."<input type ='hidden' name='id' value='".md5($item->id)."' />"
							."<button type='submit' class='btn btn-success btn-xs' title='Edit'><i class='fa fa-check'></i></button>"
						. "</form>";
			}
			
			$row[] = $action;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->job_seeker_model->count_all(),
			"recordsFiltered" => $this->job_seeker_model->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function edit() {
		$id = $this->input->post('id');
		
		$data['breadcrumb'] = $this->breadcrumb;
		$data['edit'] = $this->job_seeker_model->get_by_id($id);	
		
		$data['general_category'] = $this->general_category_model->all_category();
		$data['skill_level'] = $this->general_category_model->skill_level();
		$data['professional_category'] = $this->professional_category_model->all_category();
		$data['district'] = $this->district_model->index();

		$this->load->view('admin/templates/header', $data);
		if($data['edit']->category_type=='General') {
			$this->load->view($this->dir . 'general-form');
		} else {
			$this->load->view($this->dir . 'professional-form');
		}
		$this->load->view('admin/templates/footer');
	}

	public function general_update() {
		$id = $this->input->post('id');
		// field name, error message, validation rules
		$this->form_validation->set_rules('name', 'name', 'trim|required|xss_clean');
		$this->form_validation->set_rules('gender', 'gender', 'trim|required|xss_clean');
		$this->form_validation->set_rules('date_of_birth', 'date of birth', 'trim|required|xss_clean');
		$this->form_validation->set_rules('address', 'address', 'trim|required|xss_clean');
		$this->form_validation->set_rules('educational_qualification', 'educational qualification', 'trim|required|xss_clean');
		$this->form_validation->set_rules('experience_year', 'experience year', 'trim|required|xss_clean');
		$this->form_validation->set_rules('experience_details', 'experience details', 'trim|xss_clean');
		$this->form_validation->set_rules('general_category_id', 'general category', 'trim|required|xss_clean');
		$this->form_validation->set_rules('skill_level_id', 'skill level', 'trim|required|xss_clean');
		$this->form_validation->set_rules('district_id', 'district', 'trim|required|xss_clean');
		$this->form_validation->set_rules('contact_no', 'contact no', 'trim|required|xss_clean');
		$this->form_validation->set_rules('email', 'email', 'trim|xss_clean');
		$this->form_validation->set_rules('contact_no_last_three', 'last three digit', 'trim|required|xss_clean');

		$this->form_validation->set_error_delimiters('<span class="red">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			$this->edit();
		} else {
			$this->master_model->do_upload($this->file_path, time()); // Call file upload function

			if ($this->master_model->upload->do_upload('userfile')) {
				$file_name = $this->upload->data('file_name');
				$this->master_model->img_resize($this->file_path, $file_name, 185, 200); // Resize image after upload
				$this->master_model->delete_file($this->file_path, $this->input->post('old_file'));
			} else {
				$file_name = $this->input->post('old_file');
			}

			$data = array(
				'name' => $this->input->post('name'),
				'gender' => $this->input->post('gender'),
				'date_of_birth' => $this->input->post('date_of_birth'),
				'address' => $this->input->post('address'),
				'educational_qualification' => $this->input->post('educational_qualification'),
				'experience_year' => $this->input->post('experience_year'),
				'experience_details' => $this->input->post('experience_details'),
				'general_category_id' => $this->input->post('general_category_id'),
				'skill_level_id' => $this->input->post('skill_level_id'),
				'district_id' => $this->input->post('district_id'),
				'contact_no' => $this->input->post('contact_no'),
				'email' => $this->input->post('email'),
				'contact_no_last_three' => $this->input->post('contact_no_last_three'),
				'file_name' => $file_name
			);

			if ($this->job_seeker_model->update($data, $id)) {
				$this->form_validation->resetForm();
				$this->session->set_tempdata("msg", "<span class='success'>" . updated_success() . "</span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			}
			redirect('job_seeker');
		}
	}
	
	public function professional_update() {
		$id = $this->input->post('id');
		// field name, error message, validation rules
		$this->form_validation->set_rules('name', 'name', 'trim|required|xss_clean');
		$this->form_validation->set_rules('gender', 'gender', 'trim|required|xss_clean');
		$this->form_validation->set_rules('date_of_birth', 'age', 'trim|required|xss_clean');
		$this->form_validation->set_rules('address', 'address', 'trim|required|xss_clean');
		$this->form_validation->set_rules('professional_category_id', 'professional category', 'trim|required|xss_clean');
		$this->form_validation->set_rules('district_id', 'district', 'trim|required|xss_clean');
		$this->form_validation->set_rules('upazila_id', 'upazila', 'trim|required|xss_clean');
		$this->form_validation->set_rules('contact_no', 'contact no', 'trim|required|xss_clean');

		$this->form_validation->set_error_delimiters('<span class="red">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			$this->edit();
		} else {
			$this->master_model->do_upload($this->file_path, time()); // Call file upload function

			if ($this->master_model->upload->do_upload('userfile')) {
				$file_name = $this->upload->data('file_name');
				$this->master_model->img_resize($this->file_path, $file_name, 185, 200); // Resize image after upload
				$this->master_model->delete_file($this->file_path, $this->input->post('old_file'));
			} else {
				$file_name = $this->input->post('old_file');
			}

			$data = array(
				'name' => $this->input->post('name'),
				'gender' => $this->input->post('gender'),
				'date_of_birth' => $this->input->post('date_of_birth'),
				'address' => $this->input->post('address'),
				'professional_category_id' => $this->input->post('professional_category_id'),
				'district_id' => $this->input->post('district_id'),
				'upazila_id' => $this->input->post('upazila_id'),
				'contact_no' => $this->input->post('contact_no'),
				'file_name' => $file_name
			);

			if ($this->job_seeker_model->update($data, $id)) {
				$this->form_validation->resetForm();
				$this->session->set_tempdata("msg", "<span class='success'>" . updated_success() . "</span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			}
			redirect('job_seeker');
		}
	}
	
	public function verified() {
		$id = $this->input->post('id');
		$data = array(
			'status' => 'Verified',
		);

		if ($this->job_seeker_model->update($data, $id)) {
			$this->session->set_tempdata("msg", "<span class='success'> Successfully verified.</span>", 5);
		} else {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
		}
		redirect('job_seeker');
	}

	public function delete() {
		$id = $this->input->post('id');
		$job_seeker = $this->job_seeker_model->get_by_id($id);
		
		if ($this->job_seeker_model->delete($id) == FALSE) {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
		} else {
			$this->master_model->delete_file($this->file_path, $job_seeker->file_name);
			$this->session->set_tempdata("msg", "<span class='success'>" . deleted_success() . "</span>", 5);
		}
		redirect('job_seeker');
	}
	
}
