<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <?php echo $controller_name; ?>
            <small><?php echo 'main' ?></small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="home"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="active"><?php echo $controller_name; ?></li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <?php
                if (isset($_GET['update'])) {
                    if ($_GET['update'] == 'error') {
                        ?>
                        <div class="alert alert-danger">Update Failed</div>
                    <?php } else { ?>
                        <div class="alert alert-success">Update Success</div>
    <?php }
} ?>
                <form name="form1" method="POST" action="profile/edit_profile">
                    <div class="box box-primary" id="personal-profile-form">
                        <div class="box-header">
                            <h3 class="box-title"><?php echo $controller_name ?></h3>
                            <button class="btn btn-success btn-pop pull-right" type="submit"><i class="fa fa-save"></i> Save</button>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <div id="personal-profile-data">
                                <h1><?php echo $user->first_name . ' ' . $user->last_name; ?></h1>
                                <span class="text-info"><i class="fa fa-user"></i> <?php echo $user->role ?></span> |
                                <span class="text-info"><i class="fa fa-key"></i> <?php echo $user->apo_id ?></span> |
                                <span class="text-info"><i class="fa fa-envelope"></i> <?php echo $user->email ?></span>
                            </div>
                            <hr>
                            <div id="personal-profile-edit">
                                <div class="form-group">
                                    <label class="control-label">Email</label>  <span class="text-danger"><?php if($user->activation_code != NULL) echo "Email not verified" ?></span>
                                    <input class="form-control" name="email" value="<?php echo $user->email ?>" disabled="disabled"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">APO ID</label>
                                    <input class="form-control" name="apo_id" value="<?php echo $user->apo_id ?>" disabled="disabled"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">First Name</label>
                                    <input class="form-control" placeholder="First Name" name="first_name" value="<?php echo $user->first_name ?>" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Last Name</label>
                                    <input class="form-control" placeholder="Last Name" name="last_name" value="<?php echo $user->last_name ?>" />
                                </div>
                            </div>
                            <input name="id" type="hidden" value="<?php echo $user->id ?>" />
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </form>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div>