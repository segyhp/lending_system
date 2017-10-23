$(document).ready(function () {
    $('#epson-lend-form').bootstrapValidator({
        excluded: [':disabled', ':hidden', ':not(:visible)'],
        feedbackIcons: {
            valid: '',
            invalid: '',
            validating: ''
        },
        live: 'enabled',
        message: 'Form tidak valid',
        submitButtons: '#epson-lend-add-button',
        fields: {
            lend_type: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            purpose: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            },
            category: {
                validators: {
                    notEmpty: {
                        message: 'Required'
                    }
                }
            }
        }
    }).on('success.form.bv', function (e) {
        $('#epson-lend-form .alert-danger').addClass('hidden').text('');
        $('#epson-lend-form .alert-success').addClass('hidden').text('');
        $('#epson-lend-form .alert-warning').removeClass('hidden').text('Please Wait');
        e.preventDefault();
        var $form = $(e.target);
        var bv = $form.data('bootstrapValidator');
        $.ajax({
            url: $form.attr('action'),
            dataType: 'json',
            data: $form.serialize(),
            type: 'POST',
            success: function (result) {
                $('#epson-lend-form .alert-warning').addClass('hidden').text('');
                if (result.status == 'success') {
                    $('#epson-lend-form .alert-danger').addClass('hidden').text('');
                    $('#epson-lend-form .alert-success').removeClass('hidden').text(result.message);
                    window.location.href = result.redirect;
                }
                else {
                    $('#epson-lend-form .alert-success').addClass('hidden').text('');
                    $('#epson-lend-form .alert-danger').removeClass('hidden').text(result.message);
                }
            }
        })
    });
});