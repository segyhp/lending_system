$(document).ready(function(){
	$('#epson-login-form').bootstrapValidator({
		excluded: [':disabled', ':hidden', ':not(:visible)'],
		feedbackIcons: {
			valid: '',
			invalid: '',
			validating: ''
		},
		live: 'enabled',
		message: 'Form tidak valid',
		submitButtons: '#epson-login-button',
		fields: {
            email: {
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
            }
        }
	}).on('success.form.bv', function(e) {
		$('#epson-login-form .alert-danger').addClass('hidden').text('');
		$('#epson-login-form .alert-success').addClass('hidden').text('');
		$('#epson-login-form .alert-warning').removeClass('hidden').text('Please Wait');
		e.preventDefault();
		var $form = $(e.target);
		var bv = $form.data('bootstrapValidator');
		$.ajax({
			url : $form.attr('action'),
			dataType : 'json',
			data : $form.serialize(),
			type : 'POST',
			success : function(result){
				$('#epson-login-form .alert-warning').addClass('hidden').text('');
				if(result.status == 'success'){
					$('#epson-login-form .alert-danger').addClass('hidden').text('');
					$('#epson-login-form .alert-success').removeClass('hidden').text(result.message);
					window.location.href = result.redirect;
				}
				else {
					$('#epson-login-form .alert-success').addClass('hidden').text('');
					$('#epson-login-form .alert-danger').removeClass('hidden').text(result.message);
				}
			}
		})
	});
});