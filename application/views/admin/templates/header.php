<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title><?php echo $breadcrumb; ?></title>
		<meta name="author" content="oYo" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="shortcut icon" href="<?php echo base_url() . 'assets/admin/img/' ?>favicon.png" >    
		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="<?php echo base_url() . 'assets/admin/' ?>css/bootstrap.min.css" />
		<link rel="stylesheet" href="<?php echo base_url() . 'assets/admin/' ?>fonts/font-awesome.min.css" />
		<!-- image fancy box -->
		<link rel="stylesheet" href="<?php echo base_url() . 'assets/admin/' ?>css/colorbox.min.css" />    
		<!-- ace styles -->
		<link rel="stylesheet" href="<?php echo base_url() . 'assets/admin/' ?>css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
		<!-- form-elements page specific plugin styles -->
		<link rel="stylesheet" href="<?php echo base_url() . 'assets/admin/' ?>css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="<?php echo base_url() . 'assets/admin/' ?>css/chosen.min.css" />
		<link rel="stylesheet" href="<?php echo base_url() . 'assets/admin/' ?>css/bootstrap-datepicker3.min.css" />

		<!-- inline styles related to this page -->
		<style>
			.form-actions { padding:5px; margin:0px -12px -12px -12px; }
			.form-group { margin-bottom: 5px; }
			.txtDetails { height:250px; }
			.txtDetails2 { height:100px; }
			.error { color:#f00; font-size:12px; }
			.success { color:#0C7033; font-size:12px; }
			.actionForm {display: inline;}
			.actionForm button {border-radius: 3px; padding: 0px 3px; margin-left: 5px;}
		</style> 

	</head>

	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<div class="navbar-header pull-left">
					<a href="<?php echo base_url() . 'dashboard'; ?>" class="navbar-brand"> <img src="<?php echo base_url() . 'assets/admin/' ?>img/admin-logo.png" /> </a>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="<?php echo base_url() . 'assets/admin/' ?>avatars/avatar2.png" alt="Jason's Photo" />
								<span class="user-info"> <small>Hi,</small> <?php echo $this->session->userdata('username'); ?> </span> <i class="ace-icon fa fa-caret-down"></i>
							</a>
							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li> <a href="<?php echo base_url(); ?>" target="_blank"> <i class="ace-icon fa fa-eye"></i> Public View </a> </li>
								<li class="divider"></li>
								<li> <a onClick="return altPassword();" href="<?php echo base_url() . 'users/epassword'; ?>"> <i class="ace-icon fa fa-asterisk"></i> Change Password </a> </li>
								<li class="divider"></li>
								<li> <a onClick="return altLogout();" href="<?php echo base_url() . 'login/logout'; ?>"> <i class="ace-icon fa fa-power-off"></i> Sign Out </a> </li>
							</ul>
						</li>
					</ul>
				</div>
			</div><!-- /.navbar-container -->
		</div>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try {
					ace.settings.loadState('main-container')
				} catch (e) {
				}
			</script>

			<div id="sidebar" class="sidebar responsive ace-save-state">
				<script type="text/javascript">
					try {
						ace.settings.loadState('sidebar')
					} catch (e) {
					}
				</script>

				<ul class="nav nav-list">                
					<li class="<?php if (in_array($breadcrumb, array("Dashboard"))) echo 'active'; ?>"> <a href="<?php echo base_url() . 'dashboard' ?>"> <i class="menu-icon fa fa-tachometer"></i> <span class="menu-text"> Dashboard </span> </a> <b class="arrow"></b> </li>                
					<li class="<?php if (in_array($breadcrumb, array("Banners"))) echo 'active'; ?>"> 
						<a href="#" class="dropdown-toggle"> <i class="menu-icon fa fa-folder-open"></i> <span class="menu-text"> Banners </span> <b class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>
						<ul class="submenu">
							<li class=""> <a href="<?php echo base_url() . 'banners/add'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Upload New Banner </a> <b class="arrow"></b> </li>
							<li class=""> <a href="<?php echo base_url() . 'banners'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Manage Banners </a> <b class="arrow"></b> </li>
						</ul>
					</li>
					<li class="<?php if (in_array($breadcrumb, array("Page"))) echo 'active'; ?>"> 
						<a href="#" class="dropdown-toggle"> <i class="menu-icon fa fa-file-pdf-o"></i> <span class="menu-text"> Page </span> <b class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>
						<ul class="submenu">
							<?php foreach ($this->article_model->all_article() as $row) { ?>
								<li class=""> <a href="<?php echo base_url() . 'article/edit/'.md5($row->id); ?>"> <i class="menu-icon fa fa-caret-right"></i> <?php echo $row->title;?> </a> <b class="arrow"></b> </li>
							<?php } ?>
						</ul>
					</li>
					<li class="<?php if (in_array($breadcrumb, array("General Category"))) echo 'active'; ?>"> 
						<a href="#" class="dropdown-toggle"> <i class="menu-icon fa fa-leaf"></i> <span class="menu-text"> General Category </span> <b class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>
						<ul class="submenu">
							<li class=""> <a href="<?php echo base_url() . 'general_category/add'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Add New Category </a> <b class="arrow"></b> </li>
							<li class=""> <a href="<?php echo base_url() . 'general_category'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Manage Category </a> <b class="arrow"></b> </li>
						</ul>
					</li>
					<li class="<?php if (in_array($breadcrumb, array("Professional Category"))) echo 'active'; ?>"> 
						<a href="#" class="dropdown-toggle"> <i class="menu-icon fa fa-leaf"></i> <span class="menu-text"> Prof. Category </span> <b class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>
						<ul class="submenu">
							<li class=""> <a href="<?php echo base_url() . 'professional_category/add'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Add New Category </a> <b class="arrow"></b> </li>
							<li class=""> <a href="<?php echo base_url() . 'professional_category'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Manage Category </a> <b class="arrow"></b> </li>
						</ul>
					</li>
					<li class="<?php if (in_array($breadcrumb, array("Job Seekers"))) echo 'active'; ?>"> <a href="<?php echo base_url() . 'job_seeker' ?>"> <i class="menu-icon fa fa-briefcase"></i> <span class="menu-text"> Job Seekers </span> </a> <b class="arrow"></b> </li>                
					<li class="<?php if (in_array($breadcrumb, array("Advertisement"))) echo 'active'; ?>"> 
						<a href="#" class="dropdown-toggle"> <i class="menu-icon fa fa-leaf"></i> <span class="menu-text"> Advertisement </span> <b class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>
						<ul class="submenu">
							<li class=""> <a href="<?php echo base_url() . 'advertisement/add'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Add New Advertisement </a> <b class="arrow"></b> </li>
							<li class=""> <a href="<?php echo base_url() . 'advertisement'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Manage Advertisement </a> <b class="arrow"></b> </li>
						</ul>
					</li>
					<li <?php checkAdmin(); ?> class="<?php if (in_array($breadcrumb, array("Users", "Contact", "Article", "Restore DB"))) echo 'active'; ?>"> 
						<a href="#" class="dropdown-toggle"> <i class="menu-icon fa fa-user"></i> <span class="menu-text"> Administrator </span> <b class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>
						<ul class="submenu">
							<li class=""> <a href="<?php echo base_url() . 'contact'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Contact </a> <b class="arrow"></b> </li>
							<li class=""> <a href="<?php echo base_url() . 'users/add'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Add New User </a> <b class="arrow"></b> </li>
							<li class=""> <a href="<?php echo base_url() . 'users'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Manage Users </a> <b class="arrow"></b> </li>
							<?php if ($this->session->userdata('username')=='Lukman') { ?>
								<li class=""> <a href="<?php echo base_url() . 'article/add'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Add New Article </a> <b class="arrow"></b> </li>
								<li class=""> <a href="<?php echo base_url() . 'article'; ?>"> <i class="menu-icon fa fa-caret-right"></i> Manage Articles </a> <b class="arrow"></b> </li>
								<li class=""> <a href="<?php echo base_url() . 'users/backup_db' ?>"> <i class="menu-icon fa fa-caret-right"></i> Backup DB </a> <b class="arrow"></b> </li>
								<li class=""> <a href="<?php echo base_url() . 'users/restore_db' ?>"> <i class="menu-icon fa fa-caret-right"></i> Restore DB </a> <b class="arrow"></b> </li>
								<li class=""> <a href="<?php echo base_url() . 'users/delete_all_cache_file' ?>"> <i class="menu-icon fa fa-caret-right"></i> Delete All Cache File </a> <b class="arrow"></b> </li>
							<?php } ?>
						</ul>
					</li>                
				</ul><!-- /.nav-list -->

				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>

			</div>

			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<?php echo '<li><h4>' . $breadcrumb . '</h4><li>'; ?> <span id="msg"> <?php echo $this->session->userdata('msg'); ?> </span> 
						</ul><!-- /.breadcrumb -->
						<div class="nav-search" id="nav-search">
							<span class="red"> * field is required. </span>
						</div><!-- /.nav-search -->
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->