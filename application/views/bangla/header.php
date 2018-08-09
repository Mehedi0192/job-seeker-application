<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="<?php echo base_url() . 'assets/site/images/' ?>favicon.png" >    
		<title> <?php echo $breadcrumb; ?> </title>
		<link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/site/';?>css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/site/';?>css/bootstrap-theme.min.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/site/';?>css/font-awesome.min.css">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" rel="stylesheet" media="all">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/site/';?>css/style.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<style>
			.error {color:#f00;}
			.success {color:green;}
			.ads {
				height: auto;
			}
			.ads img {
				width: 100%;
				height: auto;
				margin-top: 10px;
			}
			.ads-footer img {
				width: 100%;
				height: 75px;
			}
			.cat-title {
				font-size: 20px;
				background-color: #c1c1c1;
				padding: 10px;
				text-align: center;
				margin-bottom: 10px;
			}
		</style>
	</head>
	<body>

		<section class="header-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="header">
							<h2><a href="<?php echo base_url();?>"><img src="<?php echo base_url().'assets/filemanager/'.$contact->logo;?>" alt="<?php echo $contact->company_name; ?>"> </a> </h2>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="header-right">
							<div class="header-buuton">
								<a class="btn btn-seeker" href="<?php echo base_url().'bn/seekers';?>">সকল চাকুরী প্রত্যাশী</a>
								<button data-toggle="modal" href="#" data-target="#squarespaceModal" class="btn  btn-seeker">ডাটা যোগ করুন</button>
								<!-- Begin: Category  -->
								<div class="modal fade" id="squarespaceModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
											</div>
											<div class="modal-body">
												<div class="job-category">
													<h1>ডাটা তৈরি করুণ</h1>
													<p>আপনার অপশনটি বেছে নিন</p>
													<div class="row">
														<div class="col-lg-6">
															<div class="all-category">
																<h2 class="category-title">জেনারেল ক্যাটাগরি</h2>
																<p>উচ্চপদস্থ কর্মকর্তা, ম্যানেজার, ইঞ্জিনিয়ার, টিচার টিউটর, অফিসার ইত্যাদি।</p>
																<a type="button" href="<?php echo base_url().'bn/general_form';?>" class="btn btn-default category-button"> ডাটা তৈরি </a>
															</div>
														</div>
														<div class="col-lg-6">
															<div class="all-category">
																<h2 class="category-title">পেশাজীবী  ক্যাটাগরি</h2>
																<p>লেবার, মিস্ত্রি, ড্রাইভার, অপারেটর, মেকানিক, দারোয়ান ইত্যাদি।</p>
																<a type="button" href="<?php echo base_url().'bn/professional_form';?>" class="btn btn-default category-button">ডাটা তৈরি</a>
															</div>
														</div>
													</div>
													<div class="contact-info">
														<p> 
															আপনার যদি কোন সাহায্যের প্রয়োজন হয় অথবা কোন প্রশ্ন থাকে তবে নিম্নে আমাদের জানান।
															<?php echo $contact->email; ?> 
														</p>
														<h3 class="contact-button"><a href="<?php echo base_url().'bn/contact'; ?>">যোগাযোগ</a> </h3>
													</div>
												</div>

											</div>
											<div class="modal-footer">
												<div class="btn-group btn-group-justified" role="group" aria-label="group button">
													<div class="btn-group" role="group">
														<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">Close</button>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- End: Category  -->
							</div>
							<div class="language">
								<div class="dropdown">
									<a href="<?php echo en_url(current_url());?>" class="btn btn-groum-custom dropdown-toggle">ইংলিশ</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>