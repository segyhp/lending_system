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
            <?php foreach ($lend_late as $row) { ?>
                <div class="col-lg-3 col-xs-6">
                    <!--small icon-->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h4>Lend ID <?php echo $row->id; ?></h4>
                            <p>Lend return at <?php echo $row->returned_at; ?></p>
                            <p>Please return your lent!!!</p>
                        </div>
                        <div class="icon">
                            <!-- <i class="ion ion-android-cart"></i> -->
                        </div>
                        <a class="small-box-footer" href="home/lend/<?php echo $row->id; ?>">Lend details <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div> <!--col-->
            <?php } ?>
        </div>
      <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                      <h3 class="box-title">Your Lend</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
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
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no=1; foreach ($lend as $d) { ?>
                            <tr>
                                <td class="text-center"><?php echo $no; ?></td>
                                <td class="text-center"><?php echo $d->id; ?></td>
                                <td class="text-center"><?php echo $d->lend_type; ?></td>
                                <td class="text-center"><?php echo $d->lend_at; ?></td>
                                <td class="text-center"><?php echo $d->returned_at; ?></td>
                                <td class="text-center">
                                    <?php  echo $d->purpose; ?></td>
                                <td class="text-center">
                                    <?php if($d->status == 0) { ?>
                                        <a>Not Approve</a>
                                    <?php } else if($d->status == 1) { ?>
                                        <a>Not Return</a>
                                    <?php } else { ?>
                                        <a><b>Returned</b></a>
                                    <?php } ?>
                                </td> 
                                <td class="text-center"><a class="btn btn-primary btn-xs" href="home/lend/<?php echo $d->id; ?>">Details</a></td>
                            </tr>
                            <?php $no++;} ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th class="text-center" width="2%">No</th>
                                <th class="text-center">Lend ID</th>
                                <th class="text-center">Lend type</th>
                                <th class="text-center">Lend at</th>
                                <th class="text-center">Return at</th>
                                <th class="text-center">Purposes</th>
                                <th class="text-center">Status</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </tfoot>
                    </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->