<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <!-- <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li> -->
        <!-- <li class="active">Dashboard</li> -->
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    <div class="row">
            <div class="col-lg-3 col-xs-6">
                <!--small icon-->
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3><?php echo $total_lend; ?></h3>
                        <p>Total Lend</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-android-cart"></i>
                    </div>
                    <a class="small-box-footer" href="admin/lend">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div> <!--col-->
            <div class="col-lg-3 col-xs-6">
                <!--small icon-->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3><?php echo $total_inventories; ?></h3>
                        <p>Total Inventory</p>
                    </div>
                    <div class="icon">
                      <i class="ion ion-bag"></i>
                    </div>
                    <a class="small-box-footer" href="admin/inventory">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div> <!--col-->
            <div class="col-lg-3 col-xs-6">
                <!--small icon-->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3><?php echo $total_employee; ?></h3>
                        <p>Total Employee</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person-add"></i>
                    </div>
                    <a class="small-box-footer" href="admin/users">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div> <!--col-->
        </div><!-- row -->
      <div class="row">
        <div class="col-md-12">
            <!-- TABLE: LATEST ORDERS -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Latest Lend</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table table-hover no-margin data-table">
                            <thead>
                                <tr>
                                    <th class="text-center" width="2%">No</th>
                                    <th class="text-center">Lend ID</th>
                                    <th class="text-center">Lend type</th>
                                    <th class="text-center">Lend at</th>
                                    <th class="text-center">Return at</th>
                                    <th class="text-center">Usage for</th>
                                    <th class="text-center">Status</th>
                                </tr>
                            </thead>
                            <tbody>

                                <?php $no=1; foreach ($data as $data_row) {
                                    ?>

                                    <tr>
                                        <td class="text-center"><?php echo $no; ?></td>
                                        <td class="text-center"><a href="admin/lend/<?php echo $data_row->id; ?>"><?php echo $data_row->id; ?></a></td>
                                        <td class="text-center"><?php echo $data_row->lend_type; ?></td>
                                        <td class="text-center"><?php echo $data_row->lend_at; ?></td>
                                        <td class="text-center"><?php echo $data_row->returned_at; ?></td>
                                        <td class="text-center">
                                            <?php  echo $data_row->purpose; ?></td>
                                        <td class="text-center">
                                            <?php if($data_row->status == 0) { ?>
                                                <a>Not Approved</a>
                                            <?php } else if($data_row->status == 1) { ?>
                                                <a>Lent</a>
                                            <?php } else { ?>
                                                <a><b>Returned</b></a>
                                            <?php } ?>
                                        </td>
                                    </tr>

                                <?php $no++; } ?>

                            </tbody>
                        </table>
                    </div><!-- /.table-responsive -->
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                </div><!-- /.box-footer -->
            </div><!-- /.box -->
        </div>
        </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->