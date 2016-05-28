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
    <link href="<c:url value="/css/bootstrap-datetimepicker.min.css"/>" rel="stylesheet">
</head>

<body>

    <div id="wrapper">

        <jsp:include page="/menu.jsp"></jsp:include>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">创建Bug</h1>
                </div>
            </div>
            <div class="row">
            	<div class="col-lg-12">
            		<div class="panel panel-default">
            			<div class="panel-heading">
                            <div class="panel-options">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#tab-1">基本信息</a></li>
                                    <li class=""><a data-toggle="tab" href="#tab-2">附件</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel-body">
                        	<div class="tab-content">
                        		<div id="tab-1" class="tab-pane active">
                        		<form id="bugInfoForm" action="<c:url value="/bug/save"/>" method="post">
		                        	<div class="row">
		                        		<div class="col-lg-3">
                        					<div class="form-group">
		                        				<label>Bug ID</label>
		                                        <input class="form-control" id="bugId" name="bugId" type="text" placeholder="自动生成" disabled>
		                        			</div>
		                        		</div>
		                        		<div class="col-lg-9">
		                        			<div class="form-group">
		                        				<label>标题 *</label>
		                                        <input id="title" name="title" class="form-control">
		                        			</div>
		                        		</div>
		                        	</div>
		                        	<div class="row">
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<label>问题区域</label>
		                                        <select id="moduleSel" name="module.moduleId" class="form-control">
		                                        	<c:forEach var="moduleOpt" items="${modules}">
		                                        	<option value="${moduleOpt.moduleId}">${moduleOpt.moduleName}</option>
		                                        	</c:forEach>
		                                        </select>
		                        			</div>
		                        		</div>
		                        		<c:if test="${not empty bug.bugId}">
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<label>状态</label>
		                                        <select name="status" id="statusSel" class="form-control">
		                                        	<c:forEach var="statusOption" items="${statusOptions}">
		                                        		<option value="${statusOption}">${statusOption.name}</option>
		                                        	</c:forEach>
		                                        </select>
		                        			</div>
		                        		</div>
		                        		</c:if>
		                        		<c:if test="${not empty bug.bugId}">
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<label>分配给</label>
		                                        <select class="form-control">
		                                            <option>自动分配</option>
		                                            <option>文勇</option>
		                                            <option>朱东</option>
		                                            <option>吴佳迪</option>
		                                            <option>娄海洋</option>
		                                        </select>
		                        			</div>
		                        		</div>
		                        		</c:if>
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<label>严重程度</label>
		                                        <select name="serverityLvl" id="serverityLvlSel" class="form-control">
		                                            <c:forEach var="servOption" items="${severityOptions}">
		                                            	<option value="${servOption.level}" <c:if test="${servOption.level==bug.serverityLvl}">selected="selected"</c:if> >${servOption.name}</option>
		                                            </c:forEach>
		                                        </select>
		                        			</div>
		                        		</div>
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<label>发现时间</label>
		                                        <input name="detectedDtStr" class="form-control dateSelector" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${bug.detectedDt}"/>">
		                        			</div>
		                        		</div>
		                        	</div>
		                        	<c:if test="${not empty bug.bugId}">
		                        	<div class="row">
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<label>优先级</label>
		                                        <select name="priority" id="prioritySel" class="form-control">
		                                            <option>低</option>
		                                            <option>中</option>
		                                            <option>高</option>
		                                        </select>
		                        			</div>
		                        		</div>
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<div class="form-group">
		                        				<label>发现人</label>
		                                        <input class="form-control">
		                        			</div>
		                        			</div>
		                        		</div>
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<label>修复时间</label>
		                                        <input class="form-control">
		                        			</div>
		                        		</div>
		                        	</div>
		                        	</c:if>
		                        	<div class="row">
		                        		<div class="col-lg-6">
		                        			<div class="form-group">
		                        				<label>操作步骤 *</label>
		                                        <textarea id="steps" name="steps" class="form-control" rows="12"></textarea>
		                        			</div>
		                        		</div>
		                        		<div class="col-lg-6">
		                        			<div class="form-group">
		                        				<label>备注/说明</label>
		                                        <textarea id="comments" name="comments" class="form-control" rows="12"></textarea>
		                        			</div>
		                        		</div>
		                        	</div>
		                        	<div class="row">
		                        		<div class="col-lg-9">
			                        		<button id="saveBtn" type="button" class="btn btn-primary btn-lg">保存</button>
			                                <button type="reset" class="btn btn-default btn-lg">重置</button>
		                                </div>
		                        	</div>
		                        </form>
                        		</div>
                        		<div id="tab-2" class="tab-pane">
                        		没有附件！
                        		</div>
                        	</div>
                        </div>
                    </div>
            	</div>
            </div>
		</div>
    </div>
    <!-- /#wrapper -->

	<jsp:include page="/commonScripts.jsp"></jsp:include>
	<script src="<c:url value="/js/datetimepicker/bootstrap-datetimepicker.js"/>"></script>
	<script src="<c:url value="/js/datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"/>"></script>
	<script src="<c:url value="/js/bugDetail.js"/>"></script>
</body>

</html>
