$(document).ready(function() {
	$('#new_detail_button').click(function(event){
		$.ajax({url: "/details/new.js", type:"get", context: "script"})
	});