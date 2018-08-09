<section class="slider-area">
	<div id="bootstrap-touch-slider" class="carousel bs-slider slide  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >
		<div class="carousel-inner" role="listbox">
			<?php foreach($banners as $key=>$row) { ?>
				<div class="item <?php echo($key==0)?"active":"";?>">
					<img src="<?php echo base_url().'assets/filemanager/banners//'.$row->file_name;?>" alt="Banner Image"  class="slide-image"/>
					<div class="bs-slider-overlay"></div>
					<div class="slide-text slide_style_center">
						<h1 data-animation="animated flipInX">First and largest place for all job seekers</h1>
						<p data-animation="animated lightSpeedIn">Looking for a job? <span>Add data!</span> Looking for job seekers?<br>
							Click <span>All Job Seekers. </span></p>
						<a href="<?php echo base_url().'en/seekers';?>" class="btn btn-primary" data-animation="animated fadeInDown">All Job Seekers</a>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
</section>   
