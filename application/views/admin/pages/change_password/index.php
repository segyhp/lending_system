<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <?php if($this->session->userdata['admin']['role'] == 2)
             echo $controller_name; 
             else
            echo 'Super User';?>
            <small><?php echo $function_name; ?></small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="home"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="active"><?php echo $controller_name; ?></li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-xs-12">
                <!-- general form elements -->
                <?php
                if (isset($_GET['msg'])) {
                    if ($_GET['msg'] == 'error' && $_GET['length'] == 'false') {
                        ?>
                        <div class="alert alert-danger">Change Password Failed, Password to short, minimum 6 character</div>
                    <?php } else if ($_GET['msg'] == 'error') { ?>
                        <div class="alert alert-danger">Change Password Failed, Check Your Current Password / New Password</div>
                    <?php } else { ?>
                        <div class="alert alert-success">Change Password Successfully</div>
                        <?php
                    }
                }
                ?>
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"><?php echo $controller_name ?></h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="admin/edit_password" method="POST">
                        <div class="box-body">
                            <div class="form-group">
                                <label >Current Password</label>
                                <input type="password" name="currentpassword" class="form-control" placeholder="Current Password">
                            </div>
                            <div class="form-group">
                                <label >New Password</label>
                                <input type="password" name="newpassword" class="form-control"  placeholder="New Password">
                            </div>
                            <div class="form-group">
                                <label >Reenter Password</label>
                                <input type="password" name="renewpassword" class="form-control"  placeholder="Re-Enter New Password">
                            </div>



                        </div><!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </div><!-- /.box -->

                <!-- Form Element sizes -->

            </div><!--/.col (left) -->
            <!-- right column -->

        </div>   <!-- /.row -->
    </section><!-- /.content -->
</div>