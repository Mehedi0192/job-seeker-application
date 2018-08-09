<div class="row">
	<div class="col-xs-12 col-sm-12 widget-container-col" id="widget-container-col-2">
		<div class="widget-box widget-color-blue" id="widget-box-2">
			<div class="widget-header">
				<h5 class="widget-title bigger lighter"> <i class="ace-icon fa fa-edit"></i> Edit <?php echo $edit->title; ?> </h5>
			</div>

			<div class="widget-body">
				<div class="widget-main">
					<form id="myForm" action="<?php echo base_url() . 'article/update/'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   

						<input type="hidden" name="id" value="<?php echo md5($edit->id); ?>" class="col-xs-10 col-sm-5" />

						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> Title <span class="red">*</span> </label>
							<div class="col-sm-9">
								<input type="text" name="title" value="<?php echo $edit->title; ?>" class="col-xs-10 col-sm-12" />
								<?php echo form_error('title'); ?>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> Details <span class="red">*</span> </label>
							<div class="col-sm-9">
								<textarea name="details" class="txtDetails col-xs-10 col-sm-12"><?php echo $edit->details; ?></textarea>
								<?php echo form_error('details'); ?>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> টাইটেল <span class="red">*</span> </label>
							<div class="col-sm-9">
								<input type="text" name="bn_title" value="<?php echo $edit->bn_title; ?>" class="col-xs-10 col-sm-12" />
								<?php echo form_error('bn_title'); ?>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> বিস্তারিত <span class="red">*</span> </label>
							<div class="col-sm-9">
								<textarea name="bn_details" class="txtDetails col-xs-10 col-sm-12"><?php echo $edit->bn_details; ?></textarea>
								<?php echo form_error('bn_details'); ?>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"> Image </label>
							<div class="col-sm-4">
								<input type="hidden" name="old_file" value="<?php echo $edit->file_name; ?>" />
								<input type="file" name="userfile"  id="id-input-file-2" />
								<span class="label label-important">NOTE!</span>
								<span class="error"> Maximum Image Size 1024 x 768 </span>
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