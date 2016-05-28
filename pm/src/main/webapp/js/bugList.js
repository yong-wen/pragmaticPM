$(document).ready(function(){
	$(".dataRow").bind("click", fastView);
	populateFirstDtlView();
});

function populateFirstDtlView(){
	var stepsV = $($(".dataRow")[0]).data("steps");
	var commentsV = $($(".dataRow")[0]).data("comments");
	var titleV = $($(".dataRow")[0]).data("title");
	
	$("#titleDisp").text(titleV);
	$("#stepsDisp").val(stepsV);
	$("#commentsDisp").val(commentsV);
}

function fastView(){
	var stepsV = $(this).data("steps");
	var commentsV = $(this).data("comments");
	var titleV = $(this).data("title");
	
	$("#titleDisp").text(titleV);
	$("#stepsDisp").val(stepsV);
	$("#commentsDisp").val(commentsV);
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