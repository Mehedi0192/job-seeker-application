<?php $banner = $this->banners_model->random_banner(); ?>
<img src="<?php echo base_url().'assets/filemanager/banners/'.$banner->file_name;?>" width="100%" class="img-responsive" />