<!DOCTYPE html>
<html>
<head>
  <base href="<?php echo base_url(); ?>"></base>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin | <?php echo $function_name ?></title>
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
  <!-- DATA TABLES -->
  <!-- <link href="assets/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" /> -->
  <link href="assets/plugins/datatables/jquery.dataTables.css" rel="stylesheet" type="text/css" />
  <link href="assets/plugins/datatables/extensions/TableTools/css/dataTables.tableTools.css" type="text/css" />
  <!-- Bootstrap Validator -->
  <link rel="stylesheet" href="assets/dist/css/bootstrapValidator.css" type="text/css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="assets/dist/css/skins/_all-skins.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="assets/plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="assets/plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="assets/plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
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
  <!-- jQuery 2.2.3 -->
  <script src="assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
  <!-- jQuery UI 1.11.4 -->
  <script src="assets/plugins/jQueryUI/jquery-ui.min.js"></script>
  <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
  <script>
    $.widget.bridge('uibutton', $.ui.button);
  </script>
  <!-- Bootstrap 3.3.6 -->
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <!-- Morris.js charts -->
  <script src="assets/plugins/morris/raphael-min.js"></script>
  <!-- <script src="assets/plugins/morris/morris.min.js"></script> -->
  <!-- Sparkline -->
  <script src="assets/plugins/sparkline/jquery.sparkline.min.js"></script>
  <!-- jvectormap -->
  <script src="assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
  <script src="assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
  <!-- jQuery Knob Chart -->
  <script src="assets/plugins/knob/jquery.knob.js"></script>
  <!-- daterangepicker -->
  <script src="assets/plugins/daterangepicker/moment.min.js"></script>
  <script src="assets/plugins/daterangepicker/daterangepicker.js"></script>
  <!-- datepicker -->
  <script src="assets/plugins/datepicker/bootstrap-datepicker.js"></script>
  <!-- Bootstrap WYSIHTML5 -->
  <script src="assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
  <!-- Slimscroll -->
  <script src="assets/plugins/slimScroll/jquery.slimscroll.min.js"></script>
  <!-- FastClick -->
  <script src="assets/plugins/fastclick/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="assets/dist/js/app.min.js"></script>
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <!-- <script src="assets/dist/js/pages/dashboard.js"></script> -->
  <!-- AdminLTE for demo purposes -->
  <script src="assets/dist/js/demo.js"></script>
  <!-- DATA TABES SCRIPT -->
  <script src="assets/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
  <script src="assets/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.js" type="text/javascript"></script>
  <!-- <script src="assets/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script> -->
  <!-- Bootstrap Validator -->
  <script src="assets/dist/js/bootstrapValidator.js" type="text/javascript"></script>
  <!-- JSPDF -->
  <script src="assets/dist/js/jspdf.min.js" type="text/javascript"></script>
  <!-- tableexport -->
  <script src="assets/dist/js/xlsx.core.min.js" type="text/javascript"></script>
  <script src="assets/dist/js/FileSaver.js" type="text/javascript"></script>
  <script src="assets/dist/js/tableexport.js" type="text/javascript"></script>
  <!-- Select2 -->
  <script src="assets/dist/js/select2.js" type="text/javascript"></script>
  <!-- page script -->
  <script type="text/javascript">
  $(function () {
    $(".data-table").DataTable({
    });
  });
  </script>
</head>
<body class="hold-transition skin-black sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="home" class="logo" style="background-color: #F7F7F7;">
      <span class="logo-mini" style="color: #1C4594"><b>EIN</b></span>
      <img src="assets/images/logo.jpg" style="width: 70%; margin-top: -25px" alt="EPS">
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu btn-notif" data-target-url="<?php echo $controller.'/click_notif' ?>" data-target-id="<?php echo $this->session->userdata['admin']['id']; ?>">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <?php if($total_notif != 0) { ?>
              <span class="label label-info total-info"><?php echo $total_notif; ?></span>
              <?php } ?>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have <?php echo $total_notif; ?> notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <?php 
                    if(count($notif) != 0)
                    foreach ($notif as $row) { ?>
                    <li>
                      <a <?php if($row->sent_status == 0) echo 'style="background-color: #f4f4f4"'; ?> >
                        <div class="pull-left">
                          <i class="fa fa-shopping-cart <?php if($row->type == 0) { echo 'text-orange'; } else echo 'text-red'; ?>"></i> <?php if($row->type == 0) { echo $row->user->first_name.' has request lend '.$row->lend_id; } else { echo $row->user->first_name.' late return lend '.$row->lend_id; } ?>
                        </div> <br>
                        <h4>
                          <small><i class="fa fa-clock-o"></i> <?php echo $row->time; ?></small>
                        </h4>
                      </a>
                  </li>
                  <?php } else { ?>
                    <li class="text-center">
                      <p>you dont have notification</p>
                    </li>
                   <?php } ?>
                </ul>
              </li>
              <!-- <li class="footer"><a href="#">View all</a></li> -->
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <!-- <div class="pull-left image"> -->
          <!-- <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"> -->
        <!-- </div> -->
        <div class="col-xs-12">
          <b style="color: white;"><?php echo $this->session->userdata['admin']['name']; ?></b>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li <?php if($this->uri->segment(2) == 'dashboard') echo 'class="active"' ?>><a href="admin/dashboard"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
        <li <?php if($this->uri->segment(2) == 'profile') echo 'class="active"' ?>><a href="admin/profile"><i class="fa fa-user"></i> <span>Profile</span></a></li>
        <li <?php if($this->uri->segment(2) == 'change_password') echo 'class="active"' ?>><a href="admin/change_password"><i class="fa fa-lock"></i> <span>Change Password</span></a></li>
        <li <?php if($this->uri->segment(2) == 'users') echo 'class="active"' ?>><a href="admin/users"><i class="fa fa-user"></i> <span>Users</span></a></li>
        <li <?php if($this->uri->segment(2) == 'inventory') echo 'class="active"' ?>><a href="admin/inventory"><i class="fa fa-building"></i> <span>Inventories</span></a></li>
        <li <?php if($this->uri->segment(2) == 'lend') echo 'class="active"' ?>><a href="admin/lend"><i class="fa fa-shopping-bag"></i> <span>Lends</span></a></li>
        <li class="header"><p></p></li>
        <li <?php if($this->uri->segment(2) == 'logs') echo 'class="active"' ?>><a href="admin/logs"><i class="fa fa-file"></i> <span>Logs</span></a></li>
        <li><a href="admin/logout"><i class="fa fa-sign-out"></i> <span>Logout</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <?php echo $page; ?>

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.6
    </div>
    <strong>Copyright &copy; 2016 <a href="http://www.epson.co.id">Epson Indonesia</a>.</strong> All rights
    reserved.
    <!-- Copyright Code &copy; 2016 <a href="dwiagungprastya@gmail.com">Dwi Agung Prastya</a>.</strong> All rights
    reserved. -->
  </footer>
</div>
<!-- ./wrapper -->
<script src="assets/dist/js/backend/notif.js" type="text/javascript"></script>
<script type="text/javascript">
  $(function() {
    $('.total-info').show();
  });
</script>
</body>
</html>
