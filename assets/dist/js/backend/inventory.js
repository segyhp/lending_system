$(document).ready(function () {
    $('#epson-inventory-form').bootstrapValidator({
        excluded: [':disabled', ':hidden', ':not(:visible)'],
        feedbackIcons: {
            valid: '',
            invalid: '',
            validating: ''
        },
        live: 'enabled',
        message: 'Form tidak valid',
        submitButtons: '#epson-inventory-add-button',
        fields: {
            category: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            acquisition: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            asset_number: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            types: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            description: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            serial_number: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            location: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            status: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            remark: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            }
        }
    }).on('success.form.bv', function (e) {
        $('#epson-inventory-form .alert-danger').addClass('hidden').text('');
        $('#epson-inventory-form .alert-success').addClass('hidden').text('');
        $('#epson-inventory-form .alert-warning').removeClass('hidden').text('Please Wait');
        e.preventDefault();
        var $form = $(e.target);
        var bv = $form.data('bootstrapValidator');
        $.ajax({
            url: $form.attr('action'),
            dataType: 'json',
            data: $form.serialize(),
            type: 'POST',
            success: function (result) {
                $('#epson-inventory-form .alert-warning').addClass('hidden').text('');
                if (result.status == 'success') {
                    $('#epson-inventory-form .alert-danger').addClass('hidden').text('');
                    $('#epson-inventory-form .alert-success').removeClass('hidden').text(result.message);
                    window.location.href = result.redirect;
                }
                else {
                    $('#epson-inventory-form .alert-success').addClass('hidden').text('');
                    $('#epson-inventory-form .alert-danger').removeClass('hidden').text(result.message);
                }
            }
        })
    });
    $('.btn-pop').click(function () {
        target = $(this).attr('data-target-add');
        $('#epson-inventory-form .alert-danger').addClass('hidden').text('');
        $('#epson-inventory-form .alert-success').addClass('hidden').text('');
        $('#epson-inventory-form .alert-warning').addClass('hidden').text('');
        $('#epson-inventory-form').attr('action', target);
        $('#inventory-id').val('');
        $('#inventory-category').val('');
        $('#datepicker').datepicker('setDate', '11/30/2002');
        $('#inventory-asset_number').val('');
        $('#inventory-types').val('');
        $('#inventory-description').val('');
        $('#inventory-serial_number').val('');
        $('#inventory-location').val('');
        $('#inventory-status').val('');
        $('#inventory-remark').val('');
    });
    $('body').delegate('.btn-edit', 'click', function () {
        $('#epson-inventory-form .alert-danger').addClass('hidden').text('');
        $('#epson-inventory-form .alert-success').addClass('hidden').text('');
        $('#epson-inventory-form .alert-warning').addClass('hidden').text('');
        var target = $(this).attr('data-target-edit');
        var target_get = $(this).attr('data-target-get-data');
        var id = $(this).attr('data-target-id');
        $.ajax({
            url: target_get,
            type: 'POST',
            dataType: 'json',
            data: {'id': id},
            success: function (result) {
                $('#epson-inventory-form').attr('action', target);
                $('#inventory-id').val(result.data.id);
                $('#inventory-category').val(result.data.inventory_categories_id);
                $('#datepicker').datepicker('setDate', result.data.acquisition);
                $('#inventory-asset_number').val(result.data.asset_number);
                $('#inventory-types').val(result.data.inventory_types_id);
                $('#inventory-description').val(result.data.description);
                $('#inventory-serial_number').val(result.data.serial_number);
                $('#inventory-location').val(result.data.location);
                $('#inventory-status').val(result.data.inventory_status_id);
                $('#inventory-remark').val(result.data.remark);
                $('#epson-modal-inventory').modal('show');
            },
            error: function () {
                alert('Error, Please Try Again');
            }
        })
    });

    $('body').delegate('.btn-delete', 'click', function () {
        var id = $(this).attr('data-target-id');
        var name = $(this).attr('data-target-name');
        $('#inventory-delete-id').val(id);
        $('#inventory-delete-name').text(name);
        $('#epson-modal-inventory-delete').modal('show');
    });
});