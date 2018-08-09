<section class="contact-page">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="contact-area">
					<h2>Contact</h2> <span id="msg"> <?php echo $this->session->userdata('msg'); ?> 
					<form id="myForm" action="<?php echo base_url() . 'en/sendEmail'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   
						<div class="form-area-full">
							<input type="text" name="name" value="<?php echo set_value('name'); ?>" class="form-control" placeholder="Name">
							<?php echo form_error('name'); ?>
							<input type="text" name="email" value="<?php echo set_value('email'); ?>" class="form-control" placeholder="Email">
							<?php echo form_error('email'); ?>
							<textarea name="comments" class="form-control" rows="10"style="height:150px !important;" placeholder="Message"><?php echo set_value('comments'); ?></textarea>
							<?php echo form_error('comments'); ?><br/>
							<button class="btn btn-share contact"><i class="fa fa-share" aria-hidden="true"></i> Send </button>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<!--<div class="contact-area">
					<h2>গুগল ম্যাপ</h2>
					<div class="form-area-full">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.9537455783225!2d90.40349641480393!3d23.749028794746007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b88f0bd1e685%3A0x3dc25e0a01014f4e!2sWan+IT+Ltd.!5e0!3m2!1sen!2sbd!4v1517286037721" width="100%" height="320" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
				</div>-->
			</div>
		</div>
	</div>
</section>