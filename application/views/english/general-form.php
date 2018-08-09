
<section class="general-category-wrappper">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="general-form">
					<h2 class="form-title">General Category  <span id="msg"> <?php echo $this->session->userdata('msg'); ?>  </h2>
					<div class="form-box">
						<form id="myForm" action="<?php echo base_url() . 'en/general_seeker_save'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   
							<fieldset>
								
								<div class="form-group">
									<label class="col-md-4 control-label">Name *</label>
									<div class="col-md-5">
										<input type="text" name="name" value="<?php echo set_value('name'); ?>" class="form-control input-md">
										<?php echo form_error('name'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">Gender *</label>
									<div class="col-md-4">
										<label class="radio-inline">
											<input type="radio" name="gender" value="Male" checked="checked">
											Male
										</label>
										<label class="radio-inline">
											<input type="radio" name="gender" value="Female">
											Female
										</label>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">Date of Birth *</label>
									<div class="col-md-5">
										<input name="date_of_birth" value="<?php echo set_value('date_of_birth'); ?>" placeholder="Date / Month/ Year" class="form-control input-md">
										<?php echo form_error('date_of_birth'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">Address * </label>
									<div class="col-md-5">
										<textarea class="form-control" name="address"><?php echo set_value('address'); ?></textarea>
										<?php echo form_error('address'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">Educational Qualifications *</label>
									<div class="col-md-5">
										<textarea class="form-control" name="educational_qualification"><?php echo set_value('educational_qualification'); ?></textarea>
										<?php echo form_error('educational_qualification'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">Experience *</label>
									<div class="col-md-5">
										<select name="experience_year" class="form-control">
											<option value=""> Please select </option>
											<option value="Freshener"> Freshener </option>
											<?php for ($i=1; $i<=20; $i++) { 
													$exp = $i.' Year';
												?>
												<option value="<?php echo $exp ?>" <?php echo set_select('experience_year', $exp); ?>> <?php echo $exp; ?> </option>
											<?php } ?>											
										</select>
										<?php echo form_error('experience_year'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">Experience Details</label>
									<div class="col-md-5">
										<textarea class="form-control" name="experience_details"><?php echo set_value('experience_details'); ?></textarea>
										<?php echo form_error('experience_details'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">Name of the Post *</label>
									<div class="col-md-5">
										<select name="general_category_id" class="form-control">
											<option value=""> Please select </option>
											<?php foreach ($category as $row) { ?>
												<option value="<?php echo $row->id; ?>" <?php echo set_select('general_category_id', $row->id); ?>> <?php echo $row->category_name; ?> </option>
											<?php } ?>											
										</select>
										<?php echo form_error('general_category_id'); ?>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label">Skill Level *</label>
									<div class="col-md-5">
										<select name="skill_level_id" class="form-control">
											<option value=""> Please select </option>
											<?php foreach ($skill_level as $row) { ?>
												<option value="<?php echo $row->id; ?>" <?php echo set_select('skill_level_id', $row->id); ?>> <?php echo $row->position; ?> </option>
											<?php } ?>											
										</select>
										<?php echo form_error('skill_level_id'); ?>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label">The area that is willing to work in *</label>
									<div class="col-md-5">
										<select name="district_id" class="form-control">
											<option value=""> Please select </option>
											<?php foreach ($district as $row) { ?>
												<option value="<?php echo $row->id; ?>" <?php echo set_select('district_id', $row->id); ?>> <?php echo $row->district_name; ?> </option>
											<?php } ?>											
										</select>
										<?php echo form_error('district_id'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">Phone / Mobile No *</label>
									<div class="col-md-5">
										<input type="text" name="contact_no" value="<?php echo set_value('contact_no'); ?>" class="form-control input-md">
										<?php echo form_error('contact_no'); ?>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label">Email</label>
									<div class="col-md-5">
										<input type="text" name="email" value="<?php echo set_value('email'); ?>" class="form-control input-md">
										<?php echo form_error('email'); ?>
									</div>
								</div>
								
									<div class="form-group">
									<label class="col-md-4 control-label">01751529606 Send Tk.50 to this number and mention the last 3 digits of your phone number.English</label>
									<div class="col-md-5">
										<input type="text" name="contact_no_last_three" value="<?php echo set_value('contact_no_last_three'); ?>" class="form-control input-md">
										<?php echo form_error('contact_no_last_three'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">Image</label>
									<div class="col-md-3">
										<div id="image-preview">
											<label >Choose Image</label>
											<input type="file" name="userfile" />
										</div>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label" for="submit"></label>
									<div class="col-md-4">
										<button id="submit" name="submit" class="btn btn-success">Submit</button>
									</div>
								</div>
								<p class="condition">Women can use a male mobile number.</p>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>