$(document).ready(function () {
	$('body').delegate('.btn-notif', 'click', function () {
		var id = $(this).attr('data-target-id');
        var target_url = $(this).attr('data-target-url');
        $.ajax({
            url: target_url,
            type: 'POST',
            dataType: 'json',
            data: {'id': id},
            success: function (result) {
                if(result.data) {
                	$('.total-info').hide();
                }
            },
            error: function () {
                alert('Error, Please Try Again');
            }
        })
    });
});