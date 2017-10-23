$(document).ready(function () {
    $('#epson-users-form').bootstrapValidator({
        excluded: [':disabled', ':hidden', ':not(:visible)'],
        feedbackIcons: {
            valid: '',
            invalid: '',
            validating: ''
        },
        live: 'enabled',
        message: 'Form tidak valid',
        submitButtons: '#epson-users-add-button',
        fields: {
            email: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            first_name: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            last_name: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            apo_id: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            role: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            'c-password': {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    },
                    identical: {
                        field: 'password',
                        message: 'Password Doesn\'t match'
                    }
                }
            }
        }
    }).on('success.form.bv', function (e) {
        $('#epson-users-form .alert-danger').addClass('hidden').text('');
        $('#epson-users-form .alert-success').addClass('hidden').text('');
        $('#epson-users-form .alert-warning').removeClass('hidden').text('Please Wait');
        e.preventDefault();
        var $form = $(e.target);
        var bv = $form.data('bootstrapValidator');
        $.ajax({
            url: $form.attr('action'),
            dataType: 'json',
            data: $form.serialize(),
            type: 'POST',
            success: function (result) {
                $('#epson-users-form .alert-warning').addClass('hidden').text('');
                if (result.status == 'success') {
                    $('#epson-users-form .alert-danger').addClass('hidden').text('');
                    $('#epson-users-form .alert-success').removeClass('hidden').text(result.message);
                    window.location.href = result.redirect;
                }
                else {
                    $('#epson-users-form .alert-success').addClass('hidden').text('');
                    $('#epson-users-form .alert-danger').removeClass('hidden').text(result.message);
                }
            }
        })
    });
    $('.btn-pop').click(function () {
        target = $(this).attr('data-target-add');
        $('#epson-users-form .alert-danger').addClass('hidden').text('');
        $('#epson-users-form .alert-success').addClass('hidden').text('');
        $('#epson-users-form .alert-warning').addClass('hidden').text('');
        $('#epson-users-form').attr('action', target);
        $('#users-id').val('');
        $('#users-email').val('');
        $('#users-first_name').val('');
        $('#users-last_name').val('');
        $('#users-apo_id').val('');
        $('#users-password').val('');
        $('#users-c-password').val('');
        $('#users-role').val('');
    });
    $('body').delegate('.btn-edit', 'click', function () {
        $('#epson-users-form .alert-danger').addClass('hidden').text('');
        $('#epson-users-form .alert-success').addClass('hidden').text('');
        $('#epson-users-form .alert-warning').addClass('hidden').text('');
        var target = $(this).attr('data-target-edit');
        var target_get = $(this).attr('data-target-get-data');
        var id = $(this).attr('data-target-id');
        $.ajax({
            url: target_get,
            type: 'POST',
            dataType: 'json',
            data: {'id': id},
            success: function (result) {
                $('#epson-users-form').attr('action', target);
                $('#users-id').val(result.data.id);
                $('#users-email').val(result.data.email).attr('readonly', true);
                $('#users-first_name').val(result.data.first_name);
                $('#users-last_name').val(result.data.last_name);
                $('#users-apo_id').val(result.data.apo_id);
                $('#users-password').val(result.data.password);
                $('#users-c-password').val(result.data.password);
                $('#users-role').val(result.data.user_roles_id);
                $('#epson-modal-users').modal('show');
            },
            error: function () {
                alert('Error, Please Try Again');
            }
        })
    });

    $('body').delegate('.btn-delete', 'click', function () {
        var id = $(this).attr('data-target-id');
        var name = $(this).attr('data-target-name');
        $('#users-delete-id').val(id);
        $('#users-delete-name').text(name);
        $('#epson-modal-users-delete').modal('show');
    });
});