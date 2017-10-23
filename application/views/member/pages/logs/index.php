<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <?php echo $controller_name; ?>
            <small><?php echo $controller_name; ?></small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="home"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="active"><?php echo $controller_name; ?></li>
        </ol>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title"><?php echo $controller_name ?></h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                    <table class="table table-bordered table-hover data-table">
                        <thead>
                            <tr>
                                <th class="text-center" width="2%">No</th>
                                <th class="text-center">Type</th>
                                <th class="text-center">Description</th>
                                <th class="text-center">Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no=1; foreach ($data as $d) { ?>
                            <tr>
                                <td class="text-center"><?php echo $no; ?></td>
                                <td class="text-center"><?php echo $d->type; ?></td>
                                <td class="text-left"><?php echo $d->description; ?></td>
                                <td class="text-center"><?php echo $d->created_at; ?></td>
                            </tr>
                            <?php $no++;} ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th class="text-center" width="2%">No</th>
                                <th class="text-center">Type</th>
                                <th class="text-center">Description</th>
                                <th class="text-center">Date</th>
                            </tr>
                        </tfoot>
                    </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div>