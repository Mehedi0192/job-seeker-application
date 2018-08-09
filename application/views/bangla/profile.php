<section class="all-job-seeking-wrappper">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="all-job-seeking">
					<div class="seeking-header">
						<?php $this->load->view('bangla/search');?>	
					</div>
					<div class="row">
						<div class="all-job-post-page">
							<div class="col-sm-3">
								<?php $this->load->view('bangla/sidebar-left');?>								
							</div>
							<div class="col-sm-6">
								<h3 class='cat-title'>বিস্তারিত</h3>
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
													$details =	'<strong> নামঃ </strong>'. $profile->name.'<br/>';
													$details .=	'<strong> লিঙ্গঃ </strong>'. $profile->gender.'<br/>';
													$details .=	'<strong> জন্মতারিখঃ </strong>'. $profile->date_of_birth.'<br/>';
													$details .=	'<strong> ঠিকানাঃ </strong>'. nl2br($profile->address).'<br/>';
													$details .=	'<strong> শিক্ষাগত যোগ্যতাঃ </strong>'. nl2br($profile->educational_qualification).'<br/>';
													$details .=	'<strong> অভিজ্ঞতাঃ </strong>'. $profile->experience_year.'<br/>';
													$details .=	'<strong> অভিজ্ঞতা বিস্তারিতঃ </strong>'. nl2br($profile->experience_details).'<br/>';
													$details .=	'<strong> পদের নামঃ </strong>'. $profile->gcb_name.'<br/>';
													$details .=	'<strong> স্কিল লেভেলঃ </strong>'. $profile->bn_position.'<br/>';
													$details .=	'<strong> যে এলাকায় চকুরি করতে ইচ্ছুকঃ </strong>'. $profile->bn_district_name.'<br/>';
													$details .=	'<strong> ফোন / মোবাইল নাম্বারঃ </strong>'. $profile->contact_no.'<br/>';
													$details .=	'<strong> ই-মেইল আইডিঃ </strong>'. $profile->email.'<br/>';
												} else {
													$details =	'<strong> নামঃ </strong>'. $profile->name.'<br/>';
													$details .=	'<strong> লিঙ্গঃ </strong>'. $profile->gender.'<br/>';
													$details .=	'<strong> বয়সঃ </strong>'. $profile->date_of_birth.'<br/>';
													$details .=	'<strong> ঠিকানাঃ </strong>'. nl2br($profile->address).'<br/>';
													$details .=	'<strong> পেশাঃ </strong>'. $profile->pcb_name.'<br/>';
													$details .=	'<strong> যে এলাকায় চকুরি করতে ইচ্ছুকঃ </strong>'. $profile->bn_upazila_name.', '.$profile->bn_district_name.'<br/>';
													$details .=	'<strong> ফোন / মোবাইল নাম্বারঃ </strong>'. $profile->contact_no.'<br/>';
												}					
												echo $details;
											?>
										</h3>

								</div>
							</section>								
							</div>
							
							<div class="col-sm-3">
								<?php $this->load->view('bangla/sidebar-right');?>
							</div>
							
						</div>
					</div>

					<!--   End: all Category list-->
				</div>
			</div>
		</div>
	</div>
</section>