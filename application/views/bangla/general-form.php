
<section class="general-category-wrappper">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="general-form">
					<h2 class="form-title">জেনারেল ক্যাটাগরি  <span id="msg"> <?php echo $this->session->userdata('msg'); ?>  </h2>
					<div class="form-box">
						<form id="myForm" action="<?php echo base_url() . 'bn/general_seeker_save'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   
							<fieldset>
								
								<div class="form-group">
									<label class="col-md-4 control-label">নাম *</label>
									<div class="col-md-5">
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
									<label class="col-md-4 control-label">জন্মতারিখ *</label>
									<div class="col-md-5">
										<input name="date_of_birth" value="<?php echo set_value('date_of_birth'); ?>" placeholder="দিন / মাস/ সাল" class="form-control input-md">
										<?php echo form_error('date_of_birth'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">ঠিকানা * </label>
									<div class="col-md-5">
										<textarea class="form-control" name="address"><?php echo set_value('address'); ?></textarea>
										<?php echo form_error('address'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">শিক্ষাগত যোগ্যতা *</label>
									<div class="col-md-5">
										<textarea class="form-control" name="educational_qualification"><?php echo set_value('educational_qualification'); ?></textarea>
										<?php echo form_error('educational_qualification'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">অভিজ্ঞতা *</label>
									<div class="col-md-5">
										<select name="experience_year" class="form-control">
											<option value=""> সিলেক্ট করুন </option>
											<option value="ফ্রেশনার"> ফ্রেশনার </option>
											<?php for ($i=1; $i<=20; $i++) { 
													$exp = eng_to_bng($i).' বছর';
												?>
												<option value="<?php echo $exp ?>" <?php echo set_select('experience_year', $exp); ?>> <?php echo $exp; ?> </option>
											<?php } ?>											
										</select>
										<?php echo form_error('experience_year'); ?>
									</div>
								</div>


								<div class="form-group">
									<label class="col-md-4 control-label">অভিজ্ঞতা বিস্তারিত</label>
									<div class="col-md-5">
										<textarea class="form-control" name="experience_details"><?php echo set_value('experience_details'); ?></textarea>
										<?php echo form_error('experience_details'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">পদের নাম *</label>
									<div class="col-md-5">
										<select name="general_category_id" class="form-control">
											<option value=""> সিলেক্ট করুন </option>
											<?php foreach ($category as $row) { ?>
												<option value="<?php echo $row->id; ?>" <?php echo set_select('general_category_id', $row->id); ?>> <?php echo $row->bn_category_name; ?> </option>
											<?php } ?>											
										</select>
										<?php echo form_error('general_category_id'); ?>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label">স্কিল লেভেল *</label>
									<div class="col-md-5">
										<select name="skill_level_id" class="form-control">
											<option value=""> সিলেক্ট করুন </option>
											<?php foreach ($skill_level as $row) { ?>
												<option value="<?php echo $row->id; ?>" <?php echo set_select('skill_level_id', $row->id); ?>> <?php echo $row->bn_position; ?> </option>
											<?php } ?>											
										</select>
										<?php echo form_error('skill_level_id'); ?>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label">যে এলাকায় চকুরি করতে ইচ্ছুক *</label>
									<div class="col-md-5">
										<select name="district_id" class="form-control">
											<option value=""> সিলেক্ট করুন </option>
											<?php foreach ($district as $row) { ?>
												<option value="<?php echo $row->id; ?>" <?php echo set_select('district_id', $row->id); ?>> <?php echo $row->bn_district_name; ?> </option>
											<?php } ?>											
										</select>
										<?php echo form_error('district_id'); ?>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-4 control-label">ফোন / মোবাইল নাম্বার *</label>
									<div class="col-md-5">
										<input type="text" name="contact_no" value="<?php echo set_value('contact_no'); ?>" class="form-control input-md">
										<?php echo form_error('contact_no'); ?>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label">ই-মেইল আইডি</label>
									<div class="col-md-5">
										<input type="text" name="email" value="<?php echo set_value('email'); ?>" class="form-control input-md">
										<?php echo form_error('email'); ?>
									</div>
								</div>
								
									<div class="form-group">
									<label class="col-md-4 control-label">০১৭৫১৫২৯৬০৬ এই নাম্বারে বিকাশের মাধ্যমে ৫০ টাকা পাঠান এবং যেনাম্বার থেকে পাঠানো হয়েছে তার শেষ তিনটা নাম্বার উল্লেখ করুন।</label>
									<div class="col-md-5">
										<input type="text" name="contact_no_last_three" value="<?php echo set_value('contact_no_last_three'); ?>" class="form-control input-md">
										<?php echo form_error('contact_no_lase_three'); ?>
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
								<p class="condition">মহিলাদের ক্ষেত্রে কোন পুরুষের নাম্বার ব্যবহার করতে পারেন।</p>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>