<div class="modal fade" id="epson-modal-inventory" tabindex="-1" role="dialog" aria-labelledby="epson-modal-inventory-label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="epson-modal-inventory-label"><?php echo $function_name; ?></h4>
            </div>
            <form id="epson-inventory-form" class="form-horizontal" action="<?php echo $controller.'/'.$function_add; ?>" method="POST">
            <input type="hidden" name="id" id="inventory-id">
            <div class="modal-body">
                <div class="alert alert-danger hidden"></div>
                <div class="alert alert-warning hidden"></div>
                <div class="alert alert-success hidden"></div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="inventory-category">Category</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <select class="form-control" name="category" id="inventory-category">
                            <?php foreach ($category as $c) { ?>
                            <option value="<?php echo $c->id; ?>"><?php echo $c->name; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="inventory-acquisition">Acquisition</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <div class="input-group date">
                          <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                          </div>
                            <input id="datepicker" class="form-control" type="text" name="acquisition" id="inventory-acquisition">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="inventory-asset_number">Asset Number</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <input class="form-control" type="text" name="asset_number" id="inventory-asset_number">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="inventory-types">Types</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <select class="form-control" name="types" id="inventory-types">
                            <?php foreach ($types as $t) { ?>
                            <option value="<?php echo $t->id; ?>"><?php echo $t->name; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="inventory-description">Description</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <textarea class="form-control" type="text" name="description" id="inventory-description" ></textarea> 
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="inventory-serial_number">Serial Number</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <input class="form-control" type="text" name="serial_number" id="inventory-serial_number">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="inventory-location">Location</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <input class="form-control" type="text" name="location" id="inventory-location">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="inventory-status">Status</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <select class="form-control" name="status" id="inventory-status">
                            <?php foreach ($status as $s) { ?>
                            <option value="<?php echo $s->id; ?>"><?php echo $s->name; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3" for="inventory-remark">Remark</label>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <input class="form-control" type="text" name="remark" id="inventory-remark">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary btn-add" id="epson-inventory-add-button">Save</button>
            </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="modal fade" id="epson-modal-inventory-delete" tabindex="-1" role="dialog" aria-labelledby="epson-modal-inventory-delete-label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="epson-modal-inventory-delete-label">Delete Inventory</h4>
            </div>
            <form id="epson-inventory-form" class="form-horizontal" action="admin/delete_inventory" method="POST">
            <input type="hidden" name="id" id="inventory-delete-id">
            <div class="modal-body">
                <div class="form-group">
                    <div class="col-md-12">
                        <div class="text-center">
                            <p>Are you sure delete <b class="bold" id="inventory-delete-name">asdas</b>?</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-danger" id="epson-inventory-delete-button">Delete</button>
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
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title"><?php echo $function_name ?></h3>
                        <button class="btn btn-success btn-pop pull-right" data-target-add="<?php echo $controller.'/'.$function_add; ?>" data-toggle="modal" data-target="#epson-modal-inventory"><i class="fa fa-plus"></i> Add New</button>
                        <button class="btn btn-primary btn-pop pull-right btn-export" type="submit"><i class="fa fa-file"></i> Export</button>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                    <table id="inventory-table" class="table table-bordered table-hover data-table">
                        <thead>
                            <tr>
                                <th class="text-center" width="2%">No</th>
                                <th class="text-center">Category</th>
                                <th class="text-center">Acquisition</th>
                                <th class="text-center">Asset Number</th>
                                <th class="text-center">Type</th>
                                <th class="text-center">Description</th>
                                <th class="text-center">Serial Number</th>
                                <th class="text-center">Location</th>
                                <th class="text-center">Status</th>
                                <th class="text-center">Remark</th>
                                <th class="text-center">Available</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no=1; foreach ($data as $d) { ?>
                            <tr>
                                <td class="text-center"><?php echo $no; ?></td>
                                <td class="text-center"><?php echo $d->category; ?></td>
                                 <td class="text-center">
                                <?php echo $d->acquisition; ?>
                                </td>
                                <td class="text-center"><?php echo $d->asset_number; ?></td>
                                <td class="text-center"><?php echo $d->types; ?></td>
                                <td class="text-center"><?php echo $d->description; ?></td>
                                <td class="text-center"><?php echo $d->serial_number; ?></td>
                                <td class="text-center"><?php echo $d->location; ?></td>
                                <td class="text-center"><?php echo $d->status; ?></td>
                                <td class="text-center"><?php echo $d->remark; ?></td>
                                <td class="text-center"><?php if($d->available == 1) { ?> <a class="btn btn-success">Available</a> <?php } else { ?> <a class="btn btn-warning">Not Available</a> <?php } ?></td>
                                <td class="text-center">
                                    <button class="btn btn-info btn-xs btn-edit" data-target-edit="<?php echo $controller.'/'.$function_edit; ?>" data-target-get-data="<?php echo $controller.'/'.$function_get_data; ?>" data-target-id="<?php echo $d->id; ?>"><i class="fa fa-edit"></i></button>
                                    <a data-target-id="<?php echo $d->id; ?>" data-target-name="<?php echo $d->description; ?>" class="btn btn-danger btn-xs btn-delete"><i class="fa fa-times"></i></a>
                                </td>   
                            </tr>
                            <?php $no++;} ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th class="text-center" width="2%">No</th>
                                <th class="text-center">Category</th>
                                <!-- <th class="text-center">Acquisition</th> -->
                                <th class="text-center">Asset Number</th>
                                <th class="text-center">Type</th>
                                <th class="text-center">Description</th>
                                <th class="text-center">Serial Number</th>
                                <th class="text-center">Location</th>
                                <th class="text-center">Status</th>
                                <th class="text-center">Remark</th>
                                <th class="text-center">Available</th>
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

<script src="assets/dist/js/backend/inventory.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        //Date picker
        $('#datepicker').datepicker({
          autoclose: true
        });

        $(".btn-export").click(function(){
            $(".btn-export").hide();
          $("#inventory-table").tableExport({
            headings: true,
            footers: false,
            fileName: "inventory_data",
            bootstrap: true
          }); 
        });
    });
</script>