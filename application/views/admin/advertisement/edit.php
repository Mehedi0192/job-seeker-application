<div class="row">
	<div class="col-xs-12 col-sm-12 widget-container-col" id="widget-container-col-2">
		<div class="widget-box widget-color-blue" id="widget-box-2">
			<div class="widget-header">
				<h5 class="widget-title bigger lighter"> <i class="ace-icon fa fa-edit"></i> Edit Advertisement </h5>
			</div>

			<div class="widget-body">
				<div class="widget-main">
					<form id="myForm" action="<?php echo base_url() . 'advertisement/update/'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   

						<input type="hidden" name="id" value="<?php echo md5($edit->id); ?>" class="col-xs-10 col-sm-5" />

						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> Company Name </label>
							<div class="col-sm-9">
								<input type="text" name="company_name" value="<?php echo $edit->company_name; ?>" class="col-xs-10 col-sm-5" />
								<?php echo form_error('company_name'); ?>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> Website Link </label>
							<div class="col-sm-9">
								<input type="text" name="website" value="<?php echo $edit->website; ?>" class="col-xs-10 col-sm-5" />
								<?php echo form_error('website'); ?>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> Ads Position  <span class="red">*</span> </label>
							<div class="col-sm-4">
								<select name="ads_position" class="chosen-select" data-placeholder="Please select ...">
									<option value=""></option>
									<option value="Bottom Left"<?php echo ($edit->ads_position == 'Bottom Left') ? 'selected="selected"' : ''; ?>>Bottom Left (Width:555px , Height:75px)</option>
									<option value="Bottom Middle"<?php echo ($edit->ads_position == 'Bottom Middle') ? 'selected="selected"' : ''; ?>>Bottom Middle (Width:265px , Height:75px)</option>
									<option value="Bottom Right"<?php echo ($edit->ads_position == 'Bottom Right') ? 'selected="selected"' : ''; ?>>Bottom Right (Width:400px , Height:220px)</option>
									<option value="Right Sidebar"<?php echo ($edit->ads_position == 'Right Sidebar') ? 'selected="selected"' : ''; ?>>Right Sidebar (Width:240px , Height:Auto)</option>
								</select>
								<?php echo form_error('ads_position'); ?>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> Ads Image </label>
							<div class="col-sm-4">
								<input type="hidden" name="old_file" value="<?php echo $edit->file_name; ?>" />
								<input type="file" name="userfile"  id="id-input-file-2" />
								<span class="label label-important">NOTE!</span>
								<span class="error"> Please upload image </span>
							</div>
						</div>

						<div class="clearfix form-actions">
							<div class="col-md-offset-2 col-md-9">
								<button class="btn btn-sm btn-success" type="submit"> <i class="ace-icon fa fa-refresh bigger-110"></i> Update </button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div><!-- /.span -->
</div><!-- /.row -->