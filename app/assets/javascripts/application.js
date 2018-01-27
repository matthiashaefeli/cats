// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

document.addEventListener('turbolinks:load', function() {
	$('.getcats').on('click', function(event) {
		event.preventDefault();
		var $test = $(this)
			.parent()
			.siblings('.getuser');
		var $userEmail = $(this)
			.parent()
			.siblings('.getuser')
			.children()[0].value;

		$.ajax({
			beforeSend: function(xhr) {
				xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'));
			},
			type: 'get',
			url: '/events/new',
			data: $userEmail
		}).done(function(response) {
			response.forEach(function(cat) {
				$('.getcats').remove();
				$test.append('<p><input type="checkbox" name="cat" value="catname"><label>' + cat + '</label></p>');
			});
		});
	});
});
