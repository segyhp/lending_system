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
                        <a class="btn btn-success btn-pop pull-right btn-print"><i class="fa fa-print"></i> Print</a>
                    </div><!-- /.box-header -->
                    <div class="box-body" id="form-data-view">
                    <div class="col-md-10">
                        <div class="row">
                            <b class="pull-right" style="border: 2px solid; padding: 10px;"><?php if($data->lend_type_id == 1) echo 'Temporary'; else echo 'Permanent';  ?></b>
                        </div>
                    </div>
                    <div class="col-md-10">
                        <div class="row">
                            <table>
                        <tr>
                            <td class="text-left" style="padding-right: 60px;"><b>Lend ID</b></td>
                            <td class="text-center" width="15%">:</td>
                            <td class="text-left" ><?php echo $data->id; ?></td>
                        </tr>
                        <tr>
                            <td class="text-left" style="padding-right: 60px;"><b>Name</b></td>
                            <td class="text-center" width="15%">:</td>
                            <td class="text-left" ><?php echo $data->name; ?></td>
                        </tr>
                        <tr>
                            <td class="text-left" style="padding-right: 60px;"><b>APO ID</b></td>
                            <td class="text-center" width="15%">:</td>
                            <td class="text-left" ><?php echo $data->apo_id; ?></td>
                        </tr>
                        <tr>
                            <td class="text-left" style="height: 20px;" colspan="3"><p></p></td>
                        </tr>
                        <tr>
                            <td class="text-left" style="padding-right: 60px;"><b>Usage date</b></td>
                            <td class="text-center" width="15%">:</td>
                            <td class="text-left" ><?php echo date('d/m/Y', $data->lend_at); ?> to <?php echo date('d/m/Y', $data->returned_at); ?></td>
                        </tr>
                        <tr>
                            <td class="text-center" style="padding-right: 60px;"><b>Purpose usage</b></td>
                            <td class="text-center" width="15%">:</td>
                            <td class="text-left" ><?php echo $data->purpose; ?></td>
                        </tr>
                    </table>
                    <br>
                    <p>Harware Details</p>
                        </div>
                    </div>
                    
                    <div class="col-md-10">
                        <div class="row">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th class="text-center" width="2%">No</th>
                                        <th class="text-center">Description</th>
                                        <th class="text-center">Serial Number</th>
                                        <th class="text-center">Asset Number</th>
                                        <th class="text-center">Receive Check</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no=1; foreach ($data->inventory as $i) { ?>
                                    <tr>
                                        <td class="text-center"><?php echo $no; ?></td>
                                        <td class="text-center"><?php echo $i->description; ?></td>
                                        <td class="text-center"><?php echo $i->serial_number; ?></td>
                                        <td class="text-center"><?php echo $i->asset_number; ?></td>
                                        <td class="text-center"></td>
                                    </tr>
                                    <?php $no++;} ?>
                                </tbody>
                            </table>
                            <br>
                            <div class="col-md-12">
                                <table>
                                <tr class="row">
                                    <td class="text-center" width="10%"><b>User</b></td>
                                    <td class="text-center" width="20%"><p></p></td>
                                    <td class="text-center" width="10%"><b>Dept. Head</b></td>
                                    <td class="text-center" width="20%"><p></p></td>
                                    <td class="text-center" width="10%"><b>IS</b></td>
                                    <td class="text-center" width="20%"><p></p></td>
                                    <td class="text-center" width="20%"><b>IS Dept. Head</b></td>
                                </tr>
                                <tr class="row">
                                    <td class="text-left" style="height: 80px;" colspan="7"><p></p></td>
                                </tr>
                                <tr class="row">
                                    <td class="text-left" width="10%"><b>Name :</b></td>
                                    <td class="text-left" width="20%"><p></p></td>
                                    <td class="text-left" width="10%"><b>Name :</b></td>
                                    <td class="text-left" width="20%"><p></p></td>
                                    <td class="text-left" width="10%"><b>Name :</b></td>
                                    <td class="text-left" width="20%"><p></p></td>
                                    <td class="text-left" width="20%"><b>Name :</b></td>
                                </tr>
                                <tr class="row">
                                    <td class="text-left" width="10%"><b>Date :</b></td>
                                    <td class="text-left" width="20%"><p></p></td>
                                    <td class="text-left" width="10%"><b>Date :</b></td>
                                    <td class="text-left" width="20%"><p></p></td>
                                    <td class="text-left" width="10%"><b>Date :</b></td>
                                    <td class="text-left" width="20%"><p></p></td>
                                    <td class="text-left" width="20%"><b>Date :</b></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    
                    
                    <br>
                    <br>
                    </div>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div>

<script type="text/javascript">
    $(function () {
        var view = $("#form-data-view");
        var cache_width = view.width();
        var cache_height = view.height();

        $('.btn-print').click(function () {
            html2canvas($("#form-data-view"), {
                onrendered: function(canvas) {
                    var imgData = canvas.toDataURL('image/png');
                    var doc = new jsPDF('p', 'mm', 'a4');
                    doc.addImage(imgData, 'PNG', 0,20,230,cache_height*0.26);
                    doc.save('lend-file.pdf');
                }
            });
        });
    });
</script>

<script src="assets/dist/js/html2canvas.min.js" type="text/javascript"></script>
