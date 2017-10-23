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
                        <button class="btn btn-primary btn-pop pull-right btn-export" type="submit"><i class="fa fa-file-excel-o"></i> Export</button>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                    <table id="lend-table" class="table table-bordered table-hover data-table">
                        <thead>
                            <tr>
                                <th class="text-center" width="2%">No</th>
                                <th class="text-center">Lend ID</th>
                                <th class="text-center">Employee Name</th>
                                <th class="text-center">Lend type</th>
                                <th class="text-center">Lend at</th>
                                <th class="text-center">Return at</th>
                                <th class="text-center">Usage for</th>
                                <th class="text-center">Status</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no=1; foreach ($data as $d) { ?>
                            <tr>
                                <td class="text-center"><?php echo $no; ?></td>
                                <td class="text-center"><a href="admin/lend/<?php echo $d->id; ?>"><?php echo $d->id; ?></a></td>
                                <td class="text-center"><?php echo $d->name; ?></td>
                                <td class="text-center"><?php echo $d->lend_type; ?></td>
                                <td class="text-center"><?php echo $d->lend_at; ?></td>
                                <td class="text-center"><?php echo $d->returned_at; ?></td>
                                <td class="text-center">
                                    <?php  echo $d->purpose; ?></td>
                                <td class="text-center">
                                    <?php if($d->status == 0) { ?>
                                        <a>Not Approve</a>
                                    <?php } else if($d->status == 1) { ?>
                                        <a>Lent</a>
                                    <?php } else { ?>
                                        <a><b>Returned</b></a>
                                    <?php } ?>
                                </td>
                                <td class="text-center">
                                    <?php if($d->action == 1) if($d->status == 0) { ?>
                                        <a href="<?php echo 'admin/lend/approve/'.$d->id; ?>" class="btn btn-primary btn-xs btn-delete">Approve</a>
                                    <?php } else if($d->status == 1) { ?>
                                        <a href="<?php echo 'admin/lend/returned/'.$d->id; ?>" class="btn btn-success btn-xs btn-delete">Confirm Return</a>
                                    <?php } ?>
                                </td>   
                            </tr>
                            <?php $no++;} ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th class="text-center" width="2%">No</th>
                                <th class="text-center">Lend ID</th>
                                <th class="text-center">Employee Name</th>
                                <th class="text-center">Lend type</th>
                                <th class="text-center">Lend at</th>
                                <th class="text-center">Return at</th>
                                <th class="text-center">Usage for</th>
                                <th class="text-center">Status</th>
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

<script type="text/javascript">
    $(function () {
        //Date picker
        $('#datepicker').datepicker({
          autoclose: true
        });

        $(".btn-export").click(function(){
            $(".btn-export").hide();
          $("#lend-table").tableExport({
            headings: true,
            footers: false,
            fileName: "lend_data",
            bootstrap: true
          }); 
        });
    });
</script>