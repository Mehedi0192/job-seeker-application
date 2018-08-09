<div class="sideber-menu">
	<h2>General Category</h2>
	<div class="scroll-category">										
		<?php foreach ($this->general_category_model->all_category() as $gc) {?>
			<a type="btn" class="btn btn-cat" data-toggle="collapse" data-target="#gc<?php echo $gc->id; ?>"> <?php echo $gc->category_name; ?> </a>
			<div id="gc<?php echo $gc->id; ?>" class="collapse">
				<li class="in-category">
					<?php foreach ($this->general_category_model->skill_level() as $skill) { ?>
						<a href="<?php echo base_url().'en/general/'.$gc->id.'/'.$skill->id;?>"><i class="fa fa-long-arrow-right" area-hidden="true"></i> <?php echo $skill->position; ?> </a>
					<?php } ?>
				</li>
			</div>
		<?php } ?>										
	</div>
</div>
<div class="sideber-menu">
	<h2>Professional Category</h2>
	<div class="scroll-category">
		<?php foreach ($this->professional_category_model->all_category() as $pc) {?>
		<li><a href="<?php echo base_url().'en/professional/'.$pc->id;?>"><?php echo $pc->category_name; ?></a></li> 
		<?php } ?>
	</div>
</div>