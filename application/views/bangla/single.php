<section class="about-page">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<?php if($single->file_name) { ?>
					<img src="<?php echo base_url().'assets/filemanager/article/'.$single->file_name;?>" style="float: left; margin-right: 10px;">
				<?php } ?>
				<h3> <?php echo $single->bn_title; ?> </h3>
				<p class="article"> <?php echo nl2br($single->bn_details); ?> </p>
				<br/>
			</div>
		</div>
	</div>
</section>