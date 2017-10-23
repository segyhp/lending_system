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
                <form name="form1" method="POST" action="lend/add_lend" id="epson-lend-form">
                    <div class="box box-primary" id="personal-profile-form">
                        <div class="box-header">
                            <h3 class="box-title"><?php echo $controller_name ?> Form</h3>
                        </div><!-- /.box-header -->
                        <div class="alert alert-danger hidden"></div>
                        <div class="alert alert-warning hidden"></div>
                        <div class="alert alert-success hidden"></div>
                        <div class="box-body">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>
                                      <input type="radio" id="lend-type1" name="lend_type" class="minimal" value="1" checked>
                                      Temporary
                                    </label>
                                    <label>
                                      <input type="radio" id="lend-type2" name="lend_type" class="minimal" value="2">
                                      Permanent
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Usage Date</label>
                                    <div class="input-group input-daterange">
                                        <input id="datepicker_lend" type="text" class="form-control" name="lend_at">
                                        <span class="input-group-addon">to</span>
                                        <input id="datepicker_return" type="text" class="form-control" name="returned_at">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Usage for</label>
                                    <textarea class="form-control" name="purpose" ></textarea>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Choice inventories</label>
                                    <select class="form-control multiple-responsive" multiple="multiple" name="category[]" id="inventory-category">
                                        <?php $no=1; foreach ($inventory as $i) { ?>
                                            <option value="<?php echo $i->id; ?>">
                                                <?php echo $no.' '.$i->types.' | '.$i->description.' | '.$i->serial_number.' | '.$i->location.' | '.$i->acquisition; ?>
                                            </option>
                                        <?php $no++; } ?>
                                    </select>
                                </div>
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <div class="col-md-12">
                                <button class="btn btn-primary btn-pop pull-right" id="epson-lend-add-button" type="submit"><i class="fa fa-save"></i> Lend</button>
                            </div>
                        </div>
                    </div><!-- /.box -->
                </form>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div>

<script src="assets/dist/js/backend/lend.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
          checkboxClass: 'icheckbox_minimal-blue',
          radioClass: 'iradio_minimal-blue'
        });

        $('.input-daterange').datepicker({
            autoclose: true,
            startDate: '0d',
            todayBtn: "linked"
        });

        $('.multiple-responsive').select2({
            tags: true
        });
    });
</script>