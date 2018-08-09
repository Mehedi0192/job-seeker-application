<section class="all-job-seeking-wrappper">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="all-job-seeking">
					<div class="seeking-header">
						<?php $this->load->view('english/search');?>	
					</div>
					<div class="row">
						<div class="all-job-post-page">
							<div class="col-sm-3">
								<?php $this->load->view('english/sidebar-left');?>								
							</div>
							<div class="col-sm-6">
								<h3 class='cat-title'>Details</h3>
								<section class="profile-area">
									<div class="profile-page">
										<?php if ($profile->file_name) { ?>
											<img src="<?php echo base_url().'assets/filemanager/job_seeker/'.$profile->file_name;?>" alt="<?php echo $profile->name; ?>" class="img-thumbnail">
										<?php } else { ?>
											<img src="<?php echo base_url().'assets/site/';?>images/profile.png" alt="Profile Image" class="img-thumbnail">
										<?php } ?>
										<h3>
											<?php 
												if($profile->category_type=='General') {
													$details =	'<strong> Name: </strong>'. $profile->name.'<br/>';
													$details .=	'<strong> Gender: </strong>'. $profile->gender.'<br/>';
													$details .=	'<strong> Date of Birth: </strong>'. $profile->date_of_birth.'<br/>';
													$details .=	'<strong> Address: </strong>'. nl2br($profile->address).'<br/>';
													$details .=	'<strong> Educational Qualifications: </strong>'. nl2br($profile->educational_qualification).'<br/>';
													$details .=	'<strong> Experience: </strong>'. $profile->experience_year.'<br/>';
													$details .=	'<strong> Experience Details: </strong>'. nl2br($profile->experience_details).'<br/>';
													$details .=	'<strong> Name of the Post: </strong>'. $profile->gc_name.'<br/>';
													$details .=	'<strong> Skill Level: </strong>'. $profile->position.'<br/>';
													$details .=	'<strong> The area that is willing to work in: </strong>'. $profile->district_name.'<br/>';
													$details .=	'<strong> Phone / Mobile No: </strong>'. $profile->contact_no.'<br/>';
													$details .=	'<strong> Email: </strong>'. $profile->email.'<br/>';
												} else {
													$details =	'<strong> Name: </strong>'. $profile->name.'<br/>';
													$details .=	'<strong> Gender: </strong>'. $profile->gender.'<br/>';
													$details .=	'<strong> Age: </strong>'. $profile->date_of_birth.'<br/>';
													$details .=	'<strong> Address: </strong>'. nl2br($profile->address).'<br/>';
													$details .=	'<strong> Occupation: </strong>'. $profile->pc_name.'<br/>';
													$details .=	'<strong> The area that is willing to work in: </strong>'. $profile->upazila_name.', '.$profile->district_name.'<br/>';
													$details .=	'<strong> Phone / Mobile No: </strong>'. $profile->contact_no.'<br/>';
												}					
												echo $details;
											?>
										</h3>

								</div>
							</section>								
							</div>
							
							<div class="col-sm-3">
								<?php $this->load->view('english/sidebar-right');?>
							</div>
							
						</div>
					</div>

					<!--   End: all Category list-->
				</div>
			</div>
		</div>
	</div>
</section>