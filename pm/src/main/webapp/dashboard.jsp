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
	<style>
		.btnArea{
			padding-top: 10px;
		}
	</style>
</head>

<body>

    <div id="wrapper">
		
		<jsp:include page="/menu.jsp"></jsp:include>

        <div id="page-wrapper">
        	<div class="row">
                <div class="col-lg-12">
                    <h4 class="page-header">快捷菜单</h4>
                </div>
            </div>
        	<div class="row">
        		<div class="col-lg-6 btnArea">
        			<a href="<c:url value="/bug/create"/>" class="btn btn-outline btn-lg btn-warning"><i class="fa fa-bug"></i> 报告发现的Bug</a>&nbsp;&nbsp;<a class="btn btn-outline btn-lg btn-primary disabled"><i class="fa fa-pagelines"></i> 提新功能要求</a>
        		</div>
        	</div>
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="page-header">未解决 Bug 统计 (共 <c:out value="${totalBugCnt}"/> 个)</h4>
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-laptop fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><c:out value="${serverEndCnt}"/></div>
                                    <div>服务端</div>
                                </div>
                            </div>
                        </div>
                        <a href="<c:url value="/bug/listUnresolved"/>?moduleId=<c:out value="${serverModuleId}"/>">
                            <div class="panel-footer">
                                <span class="pull-left">详细列表</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-android fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><c:out value="${androidEndCnt}"/></div>
                                    <div>安卓端</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">详细列表</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-apple fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><c:out value="${iOSEndCnt}"/></div>
                                    <div>iOS</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">详细列表</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-coffee fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><c:out value="${createdByMeCnt}"/></div>
                                    <div>我提的Bug</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">详细列表</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
            	<div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-tasks fa-fw"></i> 分配给我任务（<c:out value="${assignToMeCnt}"/>）
                            <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs">
                                        查看所有
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th class="col-lg-1">Bug #</th>
                                            <th class="col-lg-1">优先级</th>
                                            <th class="col-lg-1">状态</th>
                                            <th class="col-lg-7">描述</th>
                                            <th class="col-lg-2">发现日期</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="bug" items="${assignedToMeList}">
                                    	<tr>
                                            <td><c:out value="${bug.bugId}"/></td>
                                            <td><c:out value="${bug.priorityName}" /></td>
                                            <td><c:out value="${bug.status.name}" /></td>
                                            <td><c:out value="${bug.title}" /></td>
                                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${bug.createDt}"/></td>
                                        </tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-info-circle fa-fw"></i> Bug管理流程和状态说明
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<img alt="流程" src="<c:url value="/img/bugMgnProcess.png"/>" class="col-lg-10">
                        </div>
                        <!-- /.panel-body -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /#wrapper -->

	<jsp:include page="/commonScripts.jsp"></jsp:include>
	<script src="<c:url value="/js/index.js"/>"></script>
</body>

</html>
