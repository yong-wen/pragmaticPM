<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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

        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">学呗Bug管理</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
            	<li> 欢迎你，文勇 </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> 修改密码</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="<c:url value="/index.jsp"/>"><i class="fa fa-dashboard fa-fw"></i> 控制台首页</a>
                        </li>
                        <li>
                            <a href="<c:url value="/bugList.jsp"/>"><i class="fa fa-table fa-fw"></i> Bug列表</a>
                        </li>
                        <li>
                            <a href="tables.html"><i class="fa fa-warning fa-fw"></i> 报告新的Bug</a>
                        </li>
                        <li>
                            <a href="tables.html"><i class="fa fa-users fa-fw"></i> 系统用户管理</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

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
                        		<form id="bugInfo">
		                        	<div class="row">
		                        		<div class="col-lg-3">
                        					<div class="form-group">
		                        				<label>Bug ID</label>
		                                        <input class="form-control" id="disabledInput" type="text" placeholder="-" disabled>
		                        			</div>
		                        		</div>
		                        		<div class="col-lg-9">
		                        			<div class="form-group">
		                        				<label>标题</label>
		                                        <input class="form-control">
		                        			</div>
		                        		</div>
		                        	</div>
		                        	<div class="row">
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<label>问题区域</label>
		                                        <select class="form-control">
		                                            <option>Web端</option>
		                                            <option>安卓端</option>
		                                            <option>iOs端</option>
		                                        </select>
		                        			</div>
		                        		</div>
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<label>状态</label>
		                                        <select class="form-control">
		                                            <option>新创建</option>
		                                            <option>修改中</option>
		                                            <option>已解决</option>
		                                            <option>已关闭</option>
		                                            <option>已拒绝</option>
		                                            <option>重新打开</option>
		                                        </select>
		                        			</div>
		                        		</div>
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
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<label>严重程度</label>
		                                        <select class="form-control">
		                                            <option>小问题</option>
		                                            <option>一般</option>
		                                            <option>严重</option>
		                                        </select>
		                        			</div>
		                        		</div>
		                        	</div>
		                        	<div class="row">
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<label>优先级</label>
		                                        <select class="form-control">
		                                            <option>低</option>
		                                            <option>中</option>
		                                            <option>高</option>
		                                        </select>
		                        			</div>
		                        		</div>
		                        		<div class="col-lg-3">
		                        			<div class="form-group">
		                        				<label>发现时间</label>
		                                        <input class="form-control">
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
		                        	<div class="row">
		                        		<div class="col-lg-6">
		                        			<div class="form-group">
		                        				<label>重现步骤</label>
		                                        <textarea class="form-control" rows="12"></textarea>
		                        			</div>
		                        		</div>
		                        		<div class="col-lg-6">
		                        			<div class="form-group">
		                        				<label>备注/说明</label>
		                                        <textarea class="form-control" rows="12"></textarea>
		                        			</div>
		                        		</div>
		                        	</div>
		                        	<div class="row">
		                        		<div class="col-lg-9">
			                        		<button type="submit" class="btn btn-primary btn-lg">保存</button>
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
</body>

</html>
