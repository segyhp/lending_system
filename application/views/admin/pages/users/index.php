<div class="modal fade" id="epson-modal-users" tabindex="-1" role="dialog" aria-labelledby="epson-modal-users-label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="epson-modal-users-label"><?php echo $function_name; ?></h4>
            </div>
            <form id="epson-users-form" class="form-horizontal" action="<?php echo $controller.'/'.$function_add; ?>" method="POST">
            <input type="hidden" name="id" id="users-id">
            <div class="modal-body">
                <div class="alert alert-danger hidden"></div>
                <div class="alert alert-warning hidden"></div>
                <div class="alert alert-success hidden"></div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="users-email">Email</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <input class="form-control" type="text" name="email" id="users-email">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="users-first_name">First Name</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <input class="form-control" type="text" name="first_name" id="users-first_name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="users-last_name">Last Name</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <input class="form-control" type="text" name="last_name" id="users-last_name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="users-apo_id">APO ID</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <input class="form-control" type="text" name="apo_id" id="users-apo_id">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="users-password">Password</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <input class="form-control" type="password" name="password" id="users-password">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="users-c-password">Confirm Password</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <input class="form-control" type="password" name="c-password" id="users-c-password">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="users-role">Role</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <select class="form-control" name="role" id="users-role">
                            <?php foreach ($roles as $r) { ?>
                            <option value="<?php echo $r->id; ?>"><?php echo $r->name; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary btn-add" id="epson-users-add-button">Save</button>
            </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="modal fade" id="epson-modal-users-delete" tabindex="-1" role="dialog" aria-labelledby="epson-modal-users-delete-label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="epson-modal-users-delete-label">Delete User</h4>
            </div>
            <form id="epson-users-form" class="form-horizontal" action="admin/delete_users" method="POST">
            <input type="hidden" name="id" id="users-delete-id">
            <div class="modal-body">
                <div class="form-group">
                    <div class="col-md-12">
                        <div class="text-center">
                            <p>Are you sure delete <b class="bold" id="users-delete-name">asdas</b>?</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-danger" id="epson-users-delete-button">Delete</button>
            </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
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
            <li><a href="<?php echo $controller; ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="active"><?php echo $function_name; ?></li>
        </ol>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <?php if(isset($_GET['delete'])){
                    if($_GET['delete'] == 'error'){
                ?>
                <div class="alert alert-danger">Delete Failed</div>
                <?php }else{ ?>
                <div class="alert alert-success">Delete Success</div>
                <?php }} ?>
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title"><?php echo $function_name ?></h3>
                        <button class="btn btn-success btn-pop pull-right" data-target-add="<?php echo $controller.'/'.$function_add; ?>" data-toggle="modal" data-target="#epson-modal-users"><i class="fa fa-plus"></i> Add New</button>
                        <button class="btn btn-primary btn-pop pull-right btn-export" type="submit"><i class="fa fa-file"></i> Export</button>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                    <table id="users-table" class="table table-bordered table-hover data-table">
                        <thead>
                            <tr>
                                <th class="text-center" width="2%">No</th>
                                <th class="text-center">Email</th>
                                <th class="text-center">First Name</th>
                                <th class="text-center">Last Name</th>
                                <th class="text-center">APO ID</th>
                                <th class="text-center">Role</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no=1; foreach ($data as $d) { ?>
                            <tr>
                                <td class="text-center"><?php echo $no; ?></td>
                                <td class="text-center"><?php echo $d->email; ?></td>
                                <td class="text-center"><?php echo $d->first_name; ?></td>
                                <td class="text-center"><?php echo $d->last_name; ?></td>
                                <td class="text-center"><?php echo $d->apo_id; ?></td>
                                <td class="text-center"><?php echo $d->role; ?></td>
                                <td class="text-center">
                                <?php if($this->session->userdata['admin']['id'] != $d->id) { ?>
                                    <button class="btn btn-info btn-xs btn-edit" data-target-edit="<?php echo $controller.'/'.$function_edit; ?>" data-target-get-data="<?php echo $controller.'/'.$function_get_data; ?>" data-target-id="<?php echo $d->id; ?>"><i class="fa fa-edit"></i></button>
                                    <a data-target-id="<?php echo $d->id; ?>" data-target-name="<?php echo $d->first_name.' '.$d->last_name; ?>" class="btn btn-danger btn-xs btn-delete"><i class="fa fa-times"></i></a>
                                <?php } ?>
                                </td>   
                            </tr>
                            <?php $no++;} ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th class="text-center" width="2%">No</th>
                                <th class="text-center">Email</th>
                                <th class="text-center">First Name</th>
                                <th class="text-center">Last Name</th>
                                <th class="text-center">APO ID</th>
                                <th class="text-center">Role</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </tfoot>
                    </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div>
<script src="assets/dist/js/backend/user.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $(".btn-export").click(function(){
            $(".btn-export").hide();
          $("#users-table").tableExport({
            headings: true,
            footers: false,
            fileName: "lend_data",
            bootstrap: true
          }); 
        });
    });
</script>