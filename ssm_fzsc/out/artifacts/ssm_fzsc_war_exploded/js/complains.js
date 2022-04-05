$(function() {

$("#usersid").blur(
		function() {
			$("#usersid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
			}
	});

$("#contents").blur(
		function() {
			$("#contents_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contents").after("<span id='contents_msg' style='color: red'>内容不能为空</span>");
			}
	});

$("#reps").blur(
		function() {
			$("#reps_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#reps").after("<span id='reps_msg' style='color: red'>管理回复不能为空</span>");
			}
	});







$('#sub').click(function(){
var usersid = $("#usersid").val();
var contents = $("#contents").val();
var reps = $("#reps").val();
$("#usersid_msg").empty();
$("#contents_msg").empty();
$("#reps_msg").empty();
if (usersid == "" || usersid == null) {
	$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
	return false;
}
if (contents == "" || contents == null) {
	$("#contents").after("<span id='contents_msg' style='color: red'>内容不能为空</span>");
	return false;
}
if (reps == "" || reps == null) {
	$("#reps").after("<span id='reps_msg' style='color: red'>管理回复不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#usersid_msg").empty();
$("#contents_msg").empty();
$("#reps_msg").empty();
});

});
