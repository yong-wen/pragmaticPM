$(document).ready(function(){
	$(".dateSelector").datetimepicker(
			{
				format: "yyyy-mm-dd",
				language:  'zh-CN',
				todayBtn:  1,
				autoclose: 1,
				todayHighlight: 1,
				startView: 2,
				minView: 2,
				forceParse: 0
			});
	
	$("#saveBtn").bind("click", validateForm);
});

function validateForm(){
	var bugTitle = $("#title").val();
	var replicateSteps = $("#steps").val();
	if(bugTitle==""){
		alert("标题不能为空");
		return false;
	}
	if(replicateSteps==""){
		alert("操作步骤不能为空");
		return false;
	}
	$("#bugInfoForm").submit();
}