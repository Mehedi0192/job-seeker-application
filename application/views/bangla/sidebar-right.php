<div class="sideber-menu ads">
	<h2>বিজ্ঞাপন</h2>
	<?php 
		foreach ($this->advertisement_model->ads_by_position('Right Sidebar', 10) as $row) {
			echo "<a href='".$row->website."' target='_blank'>";
				echo "<img src='".base_url().'assets/filemanager/advertisement/'.$row->file_name. "' class='img-responsive' />";
			echo "</a>";
		}
	?>
</div>