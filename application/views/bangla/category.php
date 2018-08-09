
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
								
								<form id="myForm" action="<?php echo base_url() . 'bn/search_by_key'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   
									<div class="form-group">
										<div class="col-md-8">
											<input type="text" name="search_key" value="" class="form-control" placeholder="চাকুরী প্রত্যাশীর নাম লিখুন" required="" />
										</div>
										<div class="col-md-4">
											<button class="btn btn-success"> অনুসন্ধান করুন </button>
										</div>
									</div>						
								</form>
								
								<div class="all-job-list">
									<?php 
										
										$title = $this->uri->segment(2);
										if ($title=='seekers') {
											$title = "সকল শ্রেণীর চাকুরী প্রত্যাশী";
										} else if ($title=='general') {
											$category  = $this->general_category_model->get_by_id(md5($this->uri->segment(3)));
											if ($category) {
												$skill = $this->general_category_model->get_skill_by_id(md5($this->uri->segment(4)));
												if ($skill) {
													$title = "জেনারেল  <i class='fa fa-arrow-right'></i> " . $category->bn_category_name."  <i class='fa fa-arrow-right'></i> ".$skill->bn_position;
												} else {
													$title = "জেনারেল  <i class='fa fa-arrow-right'></i> " . $category->bn_category_name;
												}
											} 
										} else if ($title=='professional') {
											$category  = $this->professional_category_model->get_by_id(md5($this->uri->segment(3)));
											if ($category) {
												$title = "পেশাজীবী <i class='fa fa-arrow-right'></i> " . $category->bn_category_name;
											} 
										} else if ($title=='searching' || $title=='search_by_key') {
											$title = "সার্চ রেজাল্ট";
										}
									
										echo "<h3 class='cat-title'>".$title."</h3>";
										
										if(!$job_seeker) {
											echo "<h4 class='error text-center'>কোন তথ্য খোঁজে পাওয়া যায় নি</h4>";
										}
										
										foreach ($job_seeker as $seeker) { 
										
										?>
										<div class="job-list-box">
											<div class="col-md-9">
												<h5> যে পোস্টের জন্য খুজছি : </h5>
												<?php 
													if ($seeker->category_type=='General') {
														echo "<h2><a>".$seeker->gcb_name."</a></h2>";
														echo "<p class='article'>নামঃ " .$seeker->name; 
														echo "<br/>অভিজ্ঞতাঃ " .$seeker->experience_year; 
														echo "<br/>জন্মতারিখঃ ".$seeker->date_of_birth;
														echo "<br/>কর্ম-স্থানঃ ".$seeker->bn_district_name; 
													} else {
														echo "<h2><a>".$seeker->pcb_name."</a></h2>";
														echo "<p class='article'>নামঃ " .$seeker->name; 
														echo "<br/>বয়সঃ ".$seeker->date_of_birth;
														echo "<br/>কর্ম-স্থানঃ ".$seeker->bn_upazila_name.', '. $seeker->bn_district_name; 
													}	
													echo "<br/>প্রকাশিতঃ ". bng_date_time(date('F d, Y', strtotime($seeker->created_at))); 	
													echo "<br/>মেয়াদঃ ". bng_date_time(date('F d, Y', strtotime(deadline($seeker->created_at)))) ."</p>"; 	
												?>
											</div>
											<div class="col-md-3">
												<div class="profile-img">
													<p style="text-align: center;"> 
														<a href="<?php echo base_url().'bn/profile/'.$seeker->id; ?>">
															<?php if ($seeker->file_name) { ?>
															<img src="<?php echo base_url().'assets/filemanager/job_seeker/'.$seeker->file_name;?>" alt="<?php echo $seeker->name; ?>" class="img-thumbnail">
															<?php } else { ?>
																<img src="<?php echo base_url().'assets/site/';?>images/profile.png" alt="Profile Image" class="img-thumbnail">
															<?php } ?>
															বিস্তারিত
														</a>
													</p>
												</div>
											</div>
										</div>
									<?php } ?>
								</div>
								
								<?php echo $this->pagination->create_links(); ?>
								
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