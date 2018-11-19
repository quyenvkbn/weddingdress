<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- TITLE -->
	<title>Ciel de Gia</title>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="<?php echo site_url('node_modules/bootstrap/') ?>dist/css/bootstrap.min.css">

	<!-- FontAwesome 5 -->
	<link rel="stylesheet" href="<?php echo site_url('node_modules/@fortawesome/') ?>fontawesome-free/css/all.min.css">

	<!-- Style -->
	<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>style.min.css">


	<!-- JS -->
	<script src="<?php echo site_url('node_modules/jquery/') ?>dist/jquery.min.js"></script>

</head>

<body>

<header class="">
	<nav>
		<div class="nav-brand nav-item">
			<a href="<?php echo base_url('') ?>">
				<!--<img src="<?php echo site_url('assets/img/') ?>logo.png" alt="logo Sound ON">-->
				Ciel de Gia
			</a>
		</div>

		<div class="nav-main nav-item">
			<div id="expand-nav">
				<a class="btn-nav-expand" role="button" id="btn-nav-expand">
					<span class="nav-icon"></span>
				</a>
			</div>

			<ul>
				<li>
					<a href="<?php echo base_url('') ?>">
						About Us
					</a>
				</li>

				<li>
					<a href="<?php echo base_url('collections/') ?>">
						Bride
					</a>
				</li>

				<li>
					<a href="<?php echo base_url('product/') ?>">
						Bridesmaids & Occasion Dresses
					</a>
				</li>

				<li>
					<a href="<?php echo base_url('product/') ?>">
						Accessories
					</a>
				</li>

				<li>
					<a href="<?php echo base_url('blogs/') ?>">
						Blogs & News
					</a>
				</li>

				<li>
					<a href="<?php echo base_url('') ?>">
						Promotion
					</a>
				</li>

				<li>
					<a href="<?php echo base_url('') ?>">
						Appointment
					</a>
				</li>
			</ul>
		</div>

		<div class="nav-lang nav-item">
			<ul>
				<li>
					<a href="<?php echo base_url('') ?>">
						En
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('') ?>">
						Vi
					</a>
				</li>
			</ul>
		</div>

		<div class="nav-btn nav-item">
			<a href="<?php echo base_url('') ?>" class="btn btn-primary" role="button">
				Booking Now
			</a>
		</div>

	</nav>
</header>
