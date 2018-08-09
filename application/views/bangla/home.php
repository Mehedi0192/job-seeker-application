<section class="slider-area">
	<div id="bootstrap-touch-slider" class="carousel bs-slider slide  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >
		<div class="carousel-inner" role="listbox">
			<?php foreach($banners as $key=>$row) { ?>
				<div class="item <?php echo($key==0)?"active":"";?>">
					<img src="<?php echo base_url().'assets/filemanager/banners//'.$row->file_name;?>" alt="Banner Image"  class="slide-image"/>
					<div class="bs-slider-overlay"></div>
					<div class="slide-text slide_style_center">
						<h1 data-animation="animated flipInX">সকল চাকুরী প্রত্যাশীদের জন্য প্রথম ও বৃহত্তর জায়গা</h1>
						<p data-animation="animated lightSpeedIn">চাকুরী খুঁজছেন? <span>ডাটা যোগ করুন!</span> কর্মচারী খুঁজছেন?<br>
							<span>সকল চাকুরী প্রত্যাশী </span>তে ক্লিক করুন!</p>
						<a href="<?php echo base_url().'bn/seekers';?>" class="btn btn-primary" data-animation="animated fadeInDown">সকল চাকুরী প্রত্যাশী</a>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
</section>   
