
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
								
								<form id="myForm" action="<?php echo base_url() . 'en/search_by_key'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   
									<div class="form-group">
										<div class="col-md-8">
											<input type="text" name="search_key" value="" class="form-control" placeholder="Write job seeker name" required="" />
										</div>
										<div class="col-md-4">
											<button class="btn btn-success"> Search </button>
										</div>
									</div>						
								</form>
								
								<div class="all-job-list">
									<?php 
										
										$title = $this->uri->segment(2);
										if ($title=='seekers') {
											$title = "All Job Seekers";
										} else if ($title=='general') {
											$category  = $this->general_category_model->get_by_id(md5($this->uri->segment(3)));
											if ($category) {
												$skill = $this->general_category_model->get_skill_by_id(md5($this->uri->segment(4)));
												if ($skill) {
													$title = "General  <i class='fa fa-arrow-right'></i> " . $category->category_name."  <i class='fa fa-arrow-right'></i> ".$skill->position;
												} else {
													$title = "General  <i class='fa fa-arrow-right'></i> " . $category->category_name;
												}
											} 
										} else if ($title=='professional') {
											$category  = $this->professional_category_model->get_by_id(md5($this->uri->segment(3)));
											if ($category) {
												$title = "Professional <i class='fa fa-arrow-right'></i> " . $category->category_name;
											} 
										} else if ($title=='searching' || $title == 'search_by_key') {
											$title = "Search Result";
										}
									
										echo "<h3 class='cat-title'>".$title."</h3>";
										
										if(!$job_seeker) {
											echo "<h4 class='error text-center'>No information found</h4>";
										}
										
										foreach ($job_seeker as $seeker) { 
										
										?>
										<div class="job-list-box">
											<div class="col-md-9">
												<h5> Looking for the post: </h5>
												<?php 
													if ($seeker->category_type=='General') {
														echo "<h2><a>".$seeker->gc_name."</a></h2>";
														echo "<p class='article'>Name: " .$seeker->name; 
														echo "<br/>Experience: " .$seeker->experience_year; 
														echo "<br/>Date of Birth: ".$seeker->date_of_birth;
														echo "<br/>Place of Work: ".$seeker->district_name; 
													} else {
														echo "<h2><a>".$seeker->pc_name."</a></h2>";
														echo "<p class='article'>Name: " .$seeker->name; 
														echo "<br/>Age: ".$seeker->date_of_birth;
														echo "<br/>Place of Work: ".$seeker->upazila_name.', '. $seeker->district_name; 
													}	
													echo "<br/>Published: ". date('F d, Y', strtotime($seeker->created_at)); 	
													echo "<br/>Validity: ". date('F d, Y', strtotime(deadline($seeker->created_at))) ."</p>"; 	
												?>
											</div>
											<div class="col-md-3">
												<div class="profile-img">
													<p style="text-align: center;"> 
														<a href="<?php echo base_url().'en/profile/'.$seeker->id; ?>">
															<?php if ($seeker->file_name) { ?>
															<img src="<?php echo base_url().'assets/filemanager/job_seeker/'.$seeker->file_name;?>" alt="<?php echo $seeker->name; ?>" class="img-thumbnail">
															<?php } else { ?>
																<img src="<?php echo base_url().'assets/site/';?>images/profile.png" alt="Profile Image" class="img-thumbnail">
															<?php } ?>
															Details
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