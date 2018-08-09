<?php if (!defined('BASEPATH')) 	exit('Hacking Attempt: Get out of the system ..!');

class En extends CI_Controller {

	var $dir = 'english/';
	
	public function __construct() {
		parent::__construct();
		$this->job_seeker_model->delete_expired_seeker(); // delete all expired seekers record
		$this->perPage = 20;
	}
		
	public function index() {
		$data['contact'] = $this->contact_model->index();
		$data['breadcrumb'] = $data['contact']->company_name;
		$data['about_us'] = $this->article_model->get_by_id(md5(1));
		$data['banners'] = $this->banners_model->all_banners();
		
		$this->load->view($this->dir.'header', $data);
		$this->load->view($this->dir.'home');
		$this->load->view($this->dir.'footer');
	}
	
	public function single($id=NULL) {
		$data['contact'] = $this->contact_model->index();
		$data['breadcrumb'] = $data['contact']->company_name;
		$data['about_us'] = $this->article_model->get_by_id(md5(1));
		
		$data['single'] = $this->article_model->get_by_id(md5($id));
		
		if(!$data['single']) {
			redirect(base_url());
		}
		
		$this->load->view($this->dir.'header', $data);
		$this->load->view($this->dir.'single');
		$this->load->view($this->dir.'footer');
	}
	
	public function seekers() {
		$data['contact'] = $this->contact_model->index();
		$data['breadcrumb'] = $data['contact']->company_name;
		$data['about_us'] = $this->article_model->get_by_id(md5(1));
				
		// Pagination settings
		$config['base_url'] = base_url() . 'en/seekers';
		$config['per_page'] = $this->perPage;
		$config["uri_segment"] = 3;
		$config['total_rows'] = $this->job_seeker_model->seekers();
		$this->pagination->initialize($config);
		$start = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
	
		$data['job_seeker'] = $this->job_seeker_model->seekers($start, $config["per_page"]);
				
		$this->load->view($this->dir.'header', $data);
		$this->load->view($this->dir.'category');
		$this->load->view($this->dir.'footer');
	}
	
	public function general($category = NULL, $skill=NULL) {
		$data['contact'] = $this->contact_model->index();
		$data['breadcrumb'] = $data['contact']->company_name;
		$data['about_us'] = $this->article_model->get_by_id(md5(1));
		
		// Pagination settings
		$config['base_url'] = base_url() . 'en/general/'.$category.'/'.$skill;
		$config['per_page'] = $this->perPage;
		$config["uri_segment"] = 5;
		$config['total_rows'] = $this->job_seeker_model->general($category, $skill);
		$this->pagination->initialize($config);
		$start = ($this->uri->segment(5)) ? $this->uri->segment(5) : 0;
			
		$data['job_seeker'] = $this->job_seeker_model->general($category, $skill, $start, $config["per_page"]);
				
		$this->load->view($this->dir.'header', $data);
		$this->load->view($this->dir.'category');
		$this->load->view($this->dir.'footer');
	}
	
	public function professional($category = NULL) {
		$data['contact'] = $this->contact_model->index();
		$data['breadcrumb'] = $data['contact']->company_name;
		$data['about_us'] = $this->article_model->get_by_id(md5(1));

		// Pagination settings
		$config['base_url'] = base_url() . 'en/professional/'.$category;
		$config['per_page'] = $this->perPage;
		$config["uri_segment"] = 4;
		$config['total_rows'] = $this->job_seeker_model->professional($category);
		$this->pagination->initialize($config);
		$start = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
			
		$data['job_seeker'] = $this->job_seeker_model->professional($category, $start, $config["per_page"]);
				
		$this->load->view($this->dir.'header', $data);
		$this->load->view($this->dir.'category');
		$this->load->view($this->dir.'footer');
	}
	
	public function searching($district=NULL, $upazila=0) {
		$data['contact'] = $this->contact_model->index();
		$data['breadcrumb'] = $data['contact']->company_name;
		$data['about_us'] = $this->article_model->get_by_id(md5(1));
		
		if($this->input->post('district_id')) {
			$district = $this->input->post('district_id');
		}
		
		if($this->input->post('upazila_id')) {
			$upazila = $this->input->post('upazila_id');
		}
		
		// Pagination settings
		$config['base_url'] = base_url() . 'en/searching/'.$district.'/'.$upazila;
		$config['per_page'] = $this->perPage;
		$config["uri_segment"] = 5;
		$config['total_rows'] = $this->job_seeker_model->searching($district, $upazila);
		$this->pagination->initialize($config);
		$start = ($this->uri->segment(5)) ? $this->uri->segment(5) : 0;
			
		$data['job_seeker'] = $this->job_seeker_model->searching($district, $upazila, $start, $config["per_page"]);
				
		$this->load->view($this->dir.'header', $data);
		$this->load->view($this->dir.'category');
		$this->load->view($this->dir.'footer');
	}
	
	public function search_by_key($searchKey=NULL) {
		$data['contact'] = $this->contact_model->index();
		$data['breadcrumb'] = $data['contact']->company_name;
		$data['about_us'] = $this->article_model->get_by_id(md5(1));
		
		if($this->input->post('search_key')) {
			$searchKey = $this->input->post('search_key');
		}
				
		// Pagination settings
		$config['base_url'] = base_url() . 'en/search_by_key/'.$searchKey;
		$config['per_page'] = $this->perPage;
		$config["uri_segment"] = 4;
		$config['total_rows'] = $this->job_seeker_model->search_by_key($searchKey);
		$this->pagination->initialize($config);
		$start = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
			
		$data['job_seeker'] = $this->job_seeker_model->search_by_key($searchKey, $start, $config["per_page"]);
				
		$this->load->view($this->dir.'header', $data);
		$this->load->view($this->dir.'category');
		$this->load->view($this->dir.'footer');
	}
		
	public function profile($id=NULL) {
		$data['contact'] = $this->contact_model->index();
		$data['breadcrumb'] = $data['contact']->company_name;
		$data['about_us'] = $this->article_model->get_by_id(md5(1));
		
		$data['profile'] = $this->job_seeker_model->profile($id);
		if(!$data['profile']) {
			redirect(base_url());
		}
		
		$this->load->view($this->dir.'header', $data);
		$this->load->view($this->dir.'profile');
		$this->load->view($this->dir.'footer');
	}
	
	public function general_form() {
		$data['contact'] = $this->contact_model->index();
		$data['breadcrumb'] = $data['contact']->company_name;
		$data['about_us'] = $this->article_model->get_by_id(md5(1));
		
		$data['category'] = $this->general_category_model->all_category();
		$data['skill_level'] = $this->general_category_model->skill_level();
		$data['district'] = $this->district_model->index();
		
		$this->load->view($this->dir.'header', $data);
		$this->load->view($this->dir.'general-form');
		$this->load->view($this->dir.'footer');
	}
	
	public function general_seeker_save() {
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
		$this->form_validation->set_rules('contact_no', 'contact no', 'trim|required|is_unique[job_seeker.contact_no]|xss_clean');
		$this->form_validation->set_rules('email', 'email', 'trim|xss_clean');
		$this->form_validation->set_rules('contact_no_last_three', 'last three digit', 'trim|required|xss_clean');

		$this->form_validation->set_error_delimiters('<span class="error">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span style='color:red'> Failure. Please try again ! </span>", 5);
			$this->general_form();
		} else {
			$this->master_model->do_upload('job_seeker', time()); // Call file upload function

			if ($this->master_model->upload->do_upload('userfile')) {
				$file_name = $this->upload->data('file_name');
				$this->master_model->img_resize('job_seeker', $file_name, 185, 200); // Resize image after upload
			} else {
				$file_name = '';
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
				'category_type' => 'General',
				'created_at' => date('Y-m-d H:i:s'),
				'file_name' => $file_name
			);

			//print_details($data);
			
			if ($this->db->insert('job_seeker', $data)) {
				$this->form_validation->resetForm();
				$this->session->set_tempdata("msg", "<span class='success'> Your data successfully submitted.</span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			}
			redirect('en/general_form');
		}		
	}
	
	public function professional_form() {
		$data['contact'] = $this->contact_model->index();
		$data['breadcrumb'] = $data['contact']->company_name;
		$data['about_us'] = $this->article_model->get_by_id(md5(1));
		
		$data['category'] = $this->professional_category_model->all_category();
		$data['district'] = $this->district_model->index();
		$data['upazila'] = $this->upazila_model->index();
		
		$this->load->view($this->dir.'header', $data);
		$this->load->view($this->dir.'professional-form');
		$this->load->view($this->dir.'footer');
	}
	
	public function professional_seeker_save() {
		// field name, error message, validation rules
		$this->form_validation->set_rules('name', 'name', 'trim|required|xss_clean');
		$this->form_validation->set_rules('gender', 'gender', 'trim|required|xss_clean');
		$this->form_validation->set_rules('date_of_birth', 'age', 'trim|required|xss_clean');
		$this->form_validation->set_rules('address', 'address', 'trim|required|xss_clean');
		$this->form_validation->set_rules('professional_category_id', 'professional category', 'trim|required|xss_clean');
		$this->form_validation->set_rules('district_id', 'district', 'trim|required|xss_clean');
		$this->form_validation->set_rules('upazila_id', 'upazila', 'trim|required|xss_clean');
		$this->form_validation->set_rules('contact_no', 'contact no', 'trim|required|is_unique[job_seeker.contact_no]|xss_clean');

		$this->form_validation->set_error_delimiters('<span class="error">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span style='color:red'> Failure. Please try again ! </span>", 5);
			$this->professional_form();
		} else {
			$this->master_model->do_upload('job_seeker', time()); // Call file upload function

			if ($this->master_model->upload->do_upload('userfile')) {
				$file_name = $this->upload->data('file_name');
				$this->master_model->img_resize('job_seeker', $file_name, 185, 200); // Resize image after upload
			} else {
				$file_name = '';
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
				'category_type' => 'Professional',
				'created_at' => date('Y-m-d H:i:s'),
				'file_name' => $file_name
			);

			//print_details($data);
			
			if ($this->db->insert('job_seeker', $data)) {
				$this->form_validation->resetForm();
				$this->session->set_tempdata("msg", "<span class='success'> Your data successfully submitted.</span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			}
			redirect('en/professional_form');
		}		
	}
	
	public function contact() {
		$data['contact'] = $this->contact_model->index();
		$data['breadcrumb'] = $data['contact']->company_name;
		$data['about_us'] = $this->article_model->get_by_id(md5(1));
		
		$this->load->view($this->dir.'header', $data);
		$this->load->view($this->dir.'contact');
		$this->load->view($this->dir.'footer');
	}
	
	public function sendEmail() {
		// field name, error message, validation rules
		$this->form_validation->set_rules('name', 'name', 'trim|required|xss_clean');
		$this->form_validation->set_rules('email', 'email', 'trim|required|valid_email|xss_clean');
		$this->form_validation->set_rules('comments', 'message', 'trim|required|min_length[10]|xss_clean');

		$this->form_validation->set_error_delimiters('<span class="error">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span style='color:red'> Submission fail. Please try again ! </span>", 5);
			$this->contact();
		} else {
			$contact = $this->contact_model->index();

			$name = $this->input->post('name');
			$email = $this->input->post('email');
			$htmlContent = '<p>'.nl2br($this->input->post('comments')).'</p>';

			$this->email->to($contact->email, $contact->company_name);
			$this->email->from($email, $name);
			$this->email->subject('Contact via '.$contact->company_name);
			$this->email->message($htmlContent);
		
			if ($this->email->send()) {
				$this->session->set_tempdata("msg", "<span style='color:green'> Successfully submitted. </span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span style='color:red'> Submission fail. Please try again ! </span>", 5);
			}
			redirect('en/contact');
		}		
	}

}
