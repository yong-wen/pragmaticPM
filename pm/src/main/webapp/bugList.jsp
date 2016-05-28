<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<jsp:include page="/commonHeader.jsp"></jsp:include>
	<link href="<c:url value="/assets/dataTable/dataTables.bootstrap.css"/>" rel="stylesheet">
    <link href="<c:url value="/assets/dataTable/dataTables.responsive.css"/>" rel="stylesheet">
</head>

<body>

    <div id="wrapper">

        <jsp:include page="/menu.jsp"></jsp:include>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Bug 列表</h1>
                </div>
            </div>
            <div class="row">
            	<div class="col-lg-12">
            		<div class="panel panel-default">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
				                <thead>
				                    <tr>
				                        <th class="col-lg-1">Bug#</th>
				                        <th class="col-lg-1">严重</th>
				                        <th class="col-lg-1">优先级</th>
				                        <th class="col-lg-4">描述</th>
				                        <th class="col-lg-1">状态</th>
				                        <th class="col-lg-1">分配给</th>
				                        <th class="col-lg-1">创建人</th>
				                        <th class="col-lg-2">发现日期</th>
				                    </tr>
				                </thead>
				                <tbody>
				                	<c:forEach var="bug" items="${defectList}">
				                	<tr data-title="<c:out value="${bug.title}"/>" data-steps="<c:out value="${bug.steps}"/>" data-comments="<c:out value="${bug.comments}"/>" class="dataRow">
				                        <td># <c:out value="${bug.bugId}"/> - &nbsp;<a href="<c:url value="/bug/edit?bugId="/><c:out value="${bug.bugId}"/>">详情</a></td>
				                        <td><c:out value="${bug.severity.name}"/></td>
				                        <td><c:out value="${bug.priority}"/></td>
				                        <td><c:out value="${bug.title}"/></td>
				                        <td><c:out value="${bug.status.name}"/></td>
				                        <td><c:out value="${bug.assignTo.firstName}"/></td>
				                        <td><c:out value="${bug.createdBy.firstName}"/></td>
				                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${bug.createDt}"/></td>
				                    </tr>
				                	</c:forEach>
				                </tbody>
			            	</table>
                    </div>
            	</div>
            </div>
			<div class="row">
				<div class="col-sm-6">
					<div class="dataTables_info" id="dataTables-example_info"
						role="status" aria-live="polite">共<c:out value="${pagination.totalCnt}"/>条数据, 当前 第<c:out value="${pagination.pageNum}" />页 / 共<c:out value="${pagination.totalPage}" />页</div>
				</div>
				<div class="col-sm-6">
					<c:if test="${pagination.hasMorePage==true}">
					<div class="dataTables_paginate paging_simple_numbers"
						id="dataTables-example_paginate">
						<ul class="pagination">
							<li class="paginate_button previous"
								aria-controls="dataTables-example" tabindex="0"
								id="dataTables-example_previous"><a href="javascript:goPreviousPage();">上一页</a></li>
							<li class="paginate_button next"
								aria-controls="dataTables-example" tabindex="0"
								id="dataTables-example_next"><a href="javascript:goNextPage();">下一页</a></li>
						</ul>
					</div>
					<form id="pageForm" action="<c:url value="/bug/listOpen"/>" method="post">
						<input type="hidden" id="pageNum" name="pageNum" value="<c:out value="${pagination.pageNum}" />">
					</form>
					</c:if>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
	                        <strong>标题：</strong><span id="titleDisp"></span>
	                    </div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-5">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            重现步骤
                        </div>
                        <div class="panel-body">
                            <textarea id="stepsDisp" rows="12" cols="4" class="col-lg-12">
                            </textarea>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            交流
                            <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs">
                                        添加说明
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <textarea id="commentsDisp" rows="12" cols="4" class="col-lg-12">
                            </textarea>
                        </div>
                    </div>
                </div>
			</div>
		</div>
    </div>
    <!-- /#wrapper -->

	<jsp:include page="/commonScripts.jsp"></jsp:include>
	<script src="<c:url value="/js/bugList.js"/>"></script>
</body>

</html>
