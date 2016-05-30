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
	
	$("#bugId").val(bugIdV);
	$("#titleDisp").val(titleV);
	$("#stepsDisp").val(stepsV);
	$("#commentsDisp").val(commentsV);
	$("#prioritySel").val(priorityV);
}

function fastView(){
	var bugIdV = $($(".dataRow")[0]).data("bugId");
	var stepsV = $(this).data("steps");
	var commentsV = $(this).data("comments");
	var titleV = $(this).data("title");
	var priorityV = $(this).data("priority");
	
	$("#bugId").val(bugIdV);
	$("#titleDisp").text(titleV);
	$("#stepsDisp").val(stepsV);
	$("#commentsDisp").val(commentsV);
	$("#prioritySel").val(priorityV);
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
	
	$.ajax({
		type : "post",
		url : ctx+"/bug/update.json",
		data:{
			"bugId":bugIdV,
			"title": titleV,
			"priority": priorityV,
			"steps": stepsV,
			"comments":commentsV
		},
		dataType: "json"
	}).done(function(data){
		alert("ok");
	});	
}