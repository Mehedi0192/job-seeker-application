<div class="row">
	<div class="col-xs-12 col-sm-12 widget-container-col" id="widget-container-col-2">
		<div class="widget-box widget-color-blue" id="widget-box-2">
			<div class="widget-header">
				<h5 class="widget-title bigger lighter"> <i class="ace-icon fa fa-plus-square"></i> Add New Advertisement </h5>
			</div>

			<div class="widget-body">
				<div class="widget-main">
					<form id="myForm" action="<?php echo base_url() . 'advertisement/save'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   

						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> Company Name </label>
							<div class="col-sm-9">
								<input type="text" name="company_name" value="<?php echo set_value('company_name'); ?>" class="col-xs-10 col-sm-5" />
								<?php echo form_error('company_name'); ?>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> Website Link </label>
							<div class="col-sm-9">
								<input type="text" name="website" value="<?php echo set_value('website'); ?>" class="col-xs-10 col-sm-5" />
								<?php echo form_error('website'); ?>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> Ads Position  <span class="red">*</span> </label>
							<div class="col-sm-4">
								<select name="ads_position" class="chosen-select" data-placeholder="Please select ...">
									<option value=""></option>
									<option value="Bottom Left"<?php echo set_select('ads_position', 'Bottom Left'); ?>>Bottom Left (Width:555px , Height:75px)</option>
									<option value="Bottom Middle"<?php echo set_select('ads_position', 'Bottom Middle'); ?>>Bottom Middle (Width:265px , Height:75px)</option>
									<option value="Bottom Right"<?php echo set_select('ads_position', 'Bottom Right'); ?>>Bottom Right (Width:400px , Height:220px)</option>
									<option value="Right Sidebar"<?php echo set_select('ads_position', 'Right Sidebar'); ?>>Right Sidebar (Width:240px , Height:Auto)</option>
								</select>
								<?php echo form_error('ads_position'); ?>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> Ads Image  <span class="red">*</span></label>
							<div class="col-sm-4">
								<input type="file" name="userfile"  id="id-input-file-2" required="" />
								<span class="label label-important">NOTE!</span>
								<span class="error"> Please upload image </span>
							</div>
						</div>

						<div class="clearfix form-actions">
							<div class="col-md-offset-2 col-md-9">
								<button class="btn btn-sm btn-success" type="submit"> <i class="ace-icon fa fa-save bigger-110"></i> Save </button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div><!-- /.span -->
</div><!-- /.row -->