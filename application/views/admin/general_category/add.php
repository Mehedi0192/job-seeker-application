<div class="row">
	<div class="col-xs-12 col-sm-12 widget-container-col" id="widget-container-col-2">
		<div class="widget-box widget-color-blue" id="widget-box-2">
			<div class="widget-header">
				<h5 class="widget-title bigger lighter"> <i class="ace-icon fa fa-plus-square"></i> Add New General Category </h5>
			</div>

			<div class="widget-body">
				<div class="widget-main">
					<form id="myForm" action="<?php echo base_url() . 'general_category/save'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Category Name <span class="red">*</span></label>
							<div class="col-sm-9">
								<input type="text" name="category_name" value="<?php echo set_value('category_name'); ?>" class="col-xs-10 col-sm-5" />
								<?php echo form_error('category_name'); ?>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> ক্যাটাগরীর নাম <span class="red">*</span></label>
							<div class="col-sm-9">
								<input type="text" name="bn_category_name" value="<?php echo set_value('bn_category_name'); ?>" class="col-xs-10 col-sm-5" />
								<?php echo form_error('bn_category_name'); ?>
							</div>
						</div>

						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								<button class="btn btn-sm btn-success" type="submit"> <i class="ace-icon fa fa-save bigger-110"></i> Save </button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div><!-- /.span -->
</div><!-- /.row -->