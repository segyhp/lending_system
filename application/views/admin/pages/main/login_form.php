<!DOCTYPE html>
<html>
<head>
  <base href="<?php echo base_url(); ?>"></base>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="assets/dist/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="assets/dist/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="assets/dist/css/AdminLTE.min.css">
  <!-- Bootstrap Validator -->
  <link rel="stylesheet" href="assets/dist/css/bootstrapValidator.css" type="text/css">
  <link rel="shortcut icon" href="assets/images/logo.jpg">
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/logo.jpg">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/logo.jpg">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/logo.jpg">
  <link rel="apple-touch-icon-precomposed" href="assets/images/logo.jpg">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#">
      <img src="assets/images/logo.jpg" style="width: 60%;" alt="EPS">
    </a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>

    <form action="admin/validate_login" method="post" id="epson-login-form">
        <div class="alert alert-danger hidden"></div>
        <div class="alert alert-warning hidden"></div>
        <div class="alert alert-success hidden"></div>
        <div class="form-group has-feedback">
            <input type="email" class="form-control" placeholder="Email" name="email">
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="Password" name="password">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <!-- <div class="row">
          <div class="col-xs-12">
            <a href="#">Forgot password?</a><br>
          </div>
        </div> -->
        <div class="row">
            <div class="col-xs-8">
              
            </div>
            <!-- /.col -->
            <div class="col-xs-4">
                <button type="submit" class="btn btn-primary btn-block btn-flat" id="epson-login-button">Sign In</button>
            </div>
            <!-- /.col -->
        </div>
    </form>
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 2.2.3 -->
<script src="assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<!-- Bootstrap Validator -->
<script src="assets/dist/js/bootstrapValidator.js" type="text/javascript"></script>

<script src="assets/dist/js/backend/login.js" type="text/javascript"></script>
</body>
</html>
