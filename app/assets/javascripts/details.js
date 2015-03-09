$(document).ready(function() {
	$('#new_detail_button').click(function(event){
		$.ajax({
			url: "/details/new",
			type:"get",
		    context: "script"

		}).done(function(result){
			$("#new_details_panel .panel-body").html(result);
		})
	});
	$('.edit_detail_button').click(function(event){
		$.ajax({url: "/details/"+$(this).data("details")+"/edit.js", type:"get", context: "script"})
	});

	$('#show_detail_button').click(function(event){
		$.ajax({
			url: "/myaccount",
			type:"get", 
		    context: 'script'
		}).done(function(result){
			$("#new_details_panel .panel-body").html(result);
		})
	});
})