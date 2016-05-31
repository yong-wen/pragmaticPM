$(document).ready(function(){
	$(".dataRow").bind("click", fastView);
	$("#saveBtn").bind("click", saveInfo);
	populateFirstDtlView();
	
});

function populateFirstDtlView(){
	var bugIdV = $($(".dataRow")[0]).data("bugId");
	var stepsV = $($(".dataRow")[0]).data("steps");
	var commentsV = $($(".dataRow")[0]).data("comments");
	var titleV = $($(".dataRow")[0]).data("title");
	var priorityV = $($(".dataRow")[0]).data("priority");
	var assignToV = $($(".dataRow")[0]).data("assignTo");
	var statusV = $($(".dataRow")[0]).data("status");
	
	$("#bugId").val(bugIdV);
	$("#titleDisp").val(titleV);
	$("#stepsDisp").val(stepsV);
	$("#commentsDisp").val(commentsV);
	$("#prioritySel").val(priorityV);
	$("#assignToSel").val(assignToV);
	$("#statusSel").val(statusV);
}

function fastView(){
	var bugIdV = $(this).data("bugId");
	var stepsV = $(this).data("steps");
	var commentsV = $(this).data("comments");
	var titleV = $(this).data("title");
	var priorityV = $(this).data("priority");
	var assignToV = $(this).data("assignTo");
	var statusV = $(this).data("status");
	
	$("#bugId").val(bugIdV);
	$("#titleDisp").val(titleV);
	$("#stepsDisp").val(stepsV);
	$("#commentsDisp").val(commentsV);
	$("#prioritySel").val(priorityV);
	$("#assignToSel").val(assignToV);
	$("#statusSel").val(statusV);
}

function goPreviousPage(){
	var pN = $("#pageNum").val();
	var pNum = parseInt(pN);
	pNum = pNum - 1 ;
	$("#pageNum").val(pNum);
	$("#pageForm").submit();
}

function goNextPage(){
	var pN = $("#pageNum").val();
	var pNum = parseInt(pN);
	pNum = pNum + 1 ;
	$("#pageNum").val(pNum);
	$("#pageForm").submit();
}

function saveInfo(){
	var bugIdV = $("#bugId").val();
	var titleV = $("#titleDisp").val();
	var priorityV = $("#prioritySel").val();
	var stepsV = $("#stepsDisp").val();
	var commentsV = $("#commentsDisp").val();
	var assignToV = $("#assignToSel").val();
	var statusV = $("#statusSel").val();
	
	$.ajax({
		type : "post",
		url : ctx+"/bug/update.json",
		data:{
			"bugId":bugIdV,
			"title": titleV,
			"priority": priorityV,
			"steps": stepsV,
			"comments":commentsV,
			"assignTo.userId":assignToV,
			"status":statusV
		},
		dataType: "json"
	}).done(function(data){
		showMessage("保存成功","success");
		setTimeout(reloadPage, 2000);
	});	
}

function showMessage(msg,type){
	toastr.options = {
			"closeButton": true,
			"debug": false,
			"newestOnTop": false,
			"progressBar": false,
			"positionClass": "toast-top-center",
			"preventDuplicates": false,
			"onclick": null,
			"showDuration": "1000",
			"hideDuration": "1000",
			"timeOut": "2000",
			"extendedTimeOut": "500",
			"showEasing": "swing",
			"hideEasing": "linear",
			"showMethod": "fadeIn",
			"hideMethod": "fadeOut"
	};
	if(type=="error"){
		toastr.error(msg);
	}else if(type=="success"){
		toastr.success(msg);
	}else if(type=="warning"){
		toastr.warning(msg);
	}else if(type=="info"){
		toastr.info(msg);
	}	
}

function reloadPage(){
	window.location.reload();
}