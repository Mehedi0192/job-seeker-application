
<section class="general-category-wrappper">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="general-form">
					<h2 class="form-title">পেশাজীবী ক্যাটাগরি  <span id="msg"> <?php echo $this->session->userdata('msg'); ?>  </h2>
					<div class="form-box">
						<form id="myForm" action="<?php echo base_url() . 'bn/professional_seeker_save'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   
							<fieldset>
								
								<div class="form-group">
									<label class="col-md-4 control-label">নাম *</label>
									<div class="col-md-6">
										<input type="text" name="name" value="<?php echo set_value('name'); ?>" class="form-control input-md">
										<?php echo form_error('name'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">লিঙ্গ *</label>
									<div class="col-md-4">
										<label class="radio-inline">
											<input type="radio" name="gender" value="পুরুষ" checked="checked">
											পুরুষ
										</label>
										<label class="radio-inline">
											<input type="radio" name="gender" value="মহিলা">
											মহিলা
										</label>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">ঠিকানা * </label>
									<div class="col-md-6">
										<textarea class="form-control" name="address"><?php echo set_value('address'); ?></textarea>
										<?php echo form_error('address'); ?>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label">বয়স *</label>
									<div class="col-md-6">
										<input name="date_of_birth" value="<?php echo set_value('date_of_birth'); ?>" placeholder="" class="form-control input-md">
										<?php echo form_error('date_of_birth'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">পেশা *</label>
									<div class="col-md-6">
										<select name="professional_category_id" class="form-control">
											<option value=""> সিলেক্ট করুন </option>
											<?php foreach ($category as $row) { ?>
												<option value="<?php echo $row->id; ?>" <?php echo set_select('professional_category_id', $row->id); ?>> <?php echo $row->bn_category_name; ?> </option>
											<?php } ?>											
										</select>
										<?php echo form_error('professional_category_id'); ?>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label">ফোন / মোবাইল নাম্বার *</label>
									<div class="col-md-6">
										<input type="text" name="contact_no" value="<?php echo set_value('contact_no'); ?>" class="form-control input-md">
										<?php echo form_error('contact_no'); ?>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label">যে এলাকায় চকুরি করতে ইচ্ছুক *</label>
									<div class="col-md-3">
										<select name="district_id" id="districtId" class="form-control">
											<option value=""> জেলা সিলেক্ট করুন </option>
											<?php foreach ($district as $row) { ?>
												<option value="<?php echo $row->id; ?>" <?php echo set_select('district_id', $row->id); ?>> <?php echo $row->bn_district_name; ?> </option>
											<?php } ?>											
										</select>
										<?php echo form_error('district_id'); ?>
									</div>
									<div class="col-md-3">
										<select name="upazila_id" id="upazilaId" class="form-control">
											<option value=""> উপজেলা সিলেক্ট করুন </option>
											<?php  foreach($district as $dist) { ?>
											<optgroup class="uZila" id="uZila<?php echo $dist->id; ?>" label="-----------------------------" style="display:none;">
													<?php foreach($this->upazila_model->upazila_by_district_id($dist->id) as $row) { ?>
														<option value="<?php echo $row->id ?>" <?php echo set_select('upazila_id', $row->id); ?>> <?php echo $row->bn_upazila_name; ?> </option>
													<?php } ?>
												</optgroup>
											<?php } ?>											
										</select>
										<?php echo form_error('upazila_id'); ?>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label">ছবি</label>
									<div class="col-md-3">
										<div id="image-preview">
											<label >ছবি পছন্দ করুন</label>
											<input type="file" name="userfile" />
										</div>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label" for="submit"></label>
									<div class="col-md-4">
										<button id="submit" name="submit" class="btn btn-success">ডাটা পাঠান</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>