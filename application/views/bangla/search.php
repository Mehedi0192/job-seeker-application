<div class="search-liner">
	<div class="col-md-4 col-sm-4 col-xs-12">
		<h3>অবস্থান ভেদে সকল চাকুরী প্রত্যাশীদের খুঁজুন!</h3>
	</div>
	<div class="col-md-8 col-sm-8 col-xs-12">
		<form id="myForm" action="<?php echo base_url() . 'bn/searching'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   
			<div class="form-group">
				<div class="col-md-4">
					<select name="district_id" id="districtId" class="form-control" required="">
						<option value=""> জেলা সিলেক্ট করুন </option>
						<?php foreach ($this->district_model->index() as $row) { ?>
							<option value="<?php echo $row->id; ?>" <?php echo set_select('district_id', $row->id); ?>> <?php echo $row->bn_district_name; ?> </option>
						<?php } ?>											
					</select>
					<?php echo form_error('district_id'); ?>
				</div>
				<div class="col-md-4">
					<select name="upazila_id" id="upazilaId" class="form-control">
						<option value=""> উপজেলা সিলেক্ট করুন </option>
						<?php  foreach($this->district_model->index() as $dist) { ?>
							<optgroup class="uZila" id="uZila<?php echo $dist->id; ?>" label="--------------------" style="display:none;">
								<?php foreach($this->upazila_model->upazila_by_district_id($dist->id) as $row) { ?>
									<option value="<?php echo $row->id ?>" <?php echo set_select('upazila_id', $row->id); ?>> <?php echo $row->bn_upazila_name; ?> </option>
								<?php } ?>
							</optgroup>
						<?php } ?>											
					</select>
					<?php echo form_error('upazila_id'); ?>
				</div>
				<div class="col-md-4">
					<button class="btn btn-area-search btn-sm"> অনুসন্ধান করুন </button>
				</div>
			</div>						
		</form>
	</div>

</div>