<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>404 Page Not Found</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<?php
	$_SERVER['REQUEST_URI_PATH'] = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
	$segment = explode('/', $_SERVER['REQUEST_URI_PATH']);
	
	?>
	<!-- Bootstrap 3.3.6 -->
	<link rel="stylesheet" href="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/bootstrap/css/bootstrap.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/dist/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/dist/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/dist/css/AdminLTE.min.css">
	<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  	<link rel="stylesheet" href="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/dist/css/skins/_all-skins.min.css">
  	<!-- bootstrap wysihtml5 - text editor -->
	<link rel="stylesheet" href="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
	<link rel="shortcut icon" href="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/images/logo.jpg">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/images/logo.jpg">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/images/logo.jpg">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/images/logo.jpg">
	<link rel="apple-touch-icon-precomposed" href="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/images/logo.jpg">

	<!-- jQuery 2.2.3 -->
	<script src="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/dist/js/app.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<!-- <script src="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/dist/js/pages/dashboard.js"></script> -->
	<!-- AdminLTE for demo purposes -->
	<script src="<?php for ($i=3; $i < count($segment); $i++) echo '../'; ?>assets/dist/js/demo.js"></script>
</head>
<body style="background-color: #ecf0f5">
<!-- <div class="wrapper"> -->
<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		  <!-- <h1>
		    404 Error Page
		  </h1>
		  <ol class="breadcrumb">
		    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		    <li><a href="#">Examples</a></li>
		    <li class="active">404 error</li>
		  </ol> -->
		</section>

		<!-- Main content -->
		<section class="content">
		  <div class="error-page">
		    <h2 style="margin-top: 0px;" class="headline text-yellow"> 404</h2>

		    <div class="error-content">
		      <h3><i class="fa fa-warning text-yellow"></i> Oops! Page Not Found.</h3>

		      <p>
		       <?php echo $message; ?>
		      </p>
		    </div>
		    <!-- /.error-content -->
		  </div>
		  <!-- /.error-page -->
		</section>
	<!-- /.content -->
	</div>
	<!-- <div id="container">
		<h1><?php echo $heading; ?></h1>
		<?php echo $message; ?>
	</div> -->
<!-- </div> -->
</body>
</html>