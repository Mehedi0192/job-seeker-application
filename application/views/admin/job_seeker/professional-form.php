<div class="row">
	<div class="col-xs-12 col-sm-12 widget-container-col" id="widget-container-col-2">
		<div class="widget-box widget-color-blue" id="widget-box-2">
			<div class="widget-header">
				<h5 class="widget-title bigger lighter"> <i class="ace-icon fa fa-edit"></i> Edit Job Sekker </h5>
			</div>

			<div class="widget-body">
				<div class="widget-main">
					<form id="myForm" action="<?php echo base_url() . 'job_seeker/professional_update/'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   

						<input type="hidden" name="id" value="<?php echo md5($edit->id); ?>" class="col-xs-10 col-sm-5" />

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> নাম <span class="red">*</span> </label>
							<div class="col-sm-5">
								<input type="text" name="name" value="<?php echo $edit->name; ?>" class="col-xs-10 col-sm-12" />
								<?php echo form_error('name'); ?>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> লিঙ্গ  <span class="red">*</span> </label>
							<div class="col-sm-5">
								<input type="radio" name="gender" value="পুরুষ" <?php echo ($edit->gender == 'পুরুষ') ? 'checked="checked"' : ''; ?> class="ace input-lg" />
								<span class="lbl"> পুরুষ </span>
								&nbsp; &nbsp; &nbsp; 
								<input type="radio" name="gender"  value="মহিলা" <?php echo ($edit->gender == 'মহিলা') ? 'checked="checked"' : ''; ?> class="ace input-lg" />
								<span class="lbl"> মহিলা </span>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> বয়স <span class="red">*</span> </label>
							<div class="col-sm-5">
								<input type="text" name="date_of_birth" value="<?php echo $edit->date_of_birth; ?>" class="col-xs-10 col-sm-12" />
								<?php echo form_error('date_of_birth'); ?>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> ঠিকানা <span class="red">*</span> </label>
							<div class="col-sm-5">
								<textarea name="address" class="col-xs-10 col-sm-12"><?php echo $edit->address; ?></textarea>
								<?php echo form_error('address'); ?>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> পেশা <span class="red">*</span> </label>
							<div class="col-sm-5">
								<select name="professional_category_id" class="chosen-select" data-placeholder="সিলেক্ট করুন ...">
									<option value=""></option>
									<?php  foreach($professional_category as $row) { ?>
										<option value="<?php echo $row->id ?>" <?php echo ($edit->professional_category_id==$row->id)? 'selected="selected"' : ''; ?>> <?php echo $row->category_name; ?> </option>
									<?php } ?>
								</select>
								<?php echo form_error('professional_category_id'); ?>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> যে এলাকায় চকুরি করতে ইচ্ছুক <span class="red">*</span> </label>
							<div class="col-sm-2">
								<select name="district_id" class="chosen-select" data-placeholder="জেলা সিলেক্ট করুন ...">
									<option value=""></option>
									<?php  foreach($district as $row) { ?>
										<option value="<?php echo $row->id ?>" <?php echo ($edit->district_id==$row->id)? 'selected="selected"' : ''; ?>> <?php echo $row->bn_district_name; ?> </option>
									<?php } ?>
								</select>
								<?php echo form_error('district_id'); ?>
							</div>
							<div class="col-sm-3">
								<select name="upazila_id" class="chosen-select" data-placeholder="উপজেলা সিলেক্ট করুন ...">
									<option value=""></option>
									
									<?php  foreach($district as $dist) { ?>
										<optgroup label="<?php echo $dist->bn_district_name; ?>">
											<?php foreach($this->upazila_model->upazila_by_district_id($dist->id) as $row) { ?>
												<option value="<?php echo $row->id ?>" <?php echo ($edit->upazila_id==$row->id)? 'selected="selected"' : ''; ?>> <?php echo $row->bn_upazila_name; ?> </option>
											<?php } ?>
										</optgroup>
									<?php } ?>
								</select>
								<?php echo form_error('upazila_id'); ?>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> ফোন / মোবাইল নাম্বার  <span class="red">*</span> </label>
							<div class="col-sm-5">
								<input type="text" name="contact_no" value="<?php echo $edit->contact_no; ?>" class="col-xs-10 col-sm-12" />
								<?php echo form_error('contact_no'); ?>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Image </label>
							<div class="col-sm-4">
								<input type="hidden" name="old_file" value="<?php echo $edit->file_name; ?>" />
								<input type="file" name="userfile"  id="id-input-file-2" />
								<span class="label label-important">NOTE!</span>
								<span class="error"> Maximum Image Size 185 x 200 </span>
							</div>
						</div>

						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								<button class="btn btn-sm btn-success" type="submit"> <i class="ace-icon fa fa-refresh bigger-110"></i> Update </button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div><!-- /.span -->
</div><!-- /.row -->