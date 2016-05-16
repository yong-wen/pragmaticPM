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
				                        <th class="col-lg-5">描述</th>
				                        <th class="col-lg-1">状态</th>
				                        <th class="col-lg-1">分配给</th>
				                        <th class="col-lg-1">创建人</th>
				                        <th class="col-lg-1">发现日期</th>
				                    </tr>
				                </thead>
				                <tbody>
				                    <tr>
				                        <td>1 - &nbsp;<a>详情</a></td>
				                        <td>一般</td>
				                        <td>低</td>
				                        <td>批量导入学生失败</td>
				                        <td>未处理</td>
				                        <td>文勇</td>
				                        <td>张玲</td>
				                        <td>2016-05-16</td>
				                    </tr>
				                    <tr>
				                        <td>2 - &nbsp;<a>详情</a></td>
				                        <td>一般</td>
				                        <td>低</td>
				                        <td>课程下有教学班，删除课程</td>
				                        <td>未处理</td>
				                        <td>文勇</td>
				                        <td>张玲</td>
				                        <td>2016-05-16</td>
				                    </tr>
				                    <tr>
				                        <td>1</td>
				                        <td>一般</td>
				                        <td>低</td>
				                        <td>批量导入学生失败</td>
				                        <td>未处理</td>
				                        <td>文勇</td>
				                        <td>张玲</td>
				                        <td>2016-05-16</td>
				                    </tr>
				                    <tr>
				                        <td>1</td>
				                        <td>一般</td>
				                        <td>低</td>
				                        <td>课程下有教学班，删除课程</td>
				                        <td>未处理</td>
				                        <td>文勇</td>
				                        <td>张玲</td>
				                        <td>2016-05-16</td>
				                    </tr>
				                    <tr class="odd">
				                        <td>1</td>
				                        <td>一般</td>
				                        <td>低</td>
				                        <td>批量导入学生失败</td>
				                        <td>未处理</td>
				                        <td>文勇</td>
				                        <td>张玲</td>
				                        <td>2016-05-16</td>
				                    </tr>
				                    <tr class="even">
				                        <td>1</td>
				                        <td>一般</td>
				                        <td>低</td>
				                        <td>课程下有教学班，删除课程</td>
				                        <td>未处理</td>
				                        <td>文勇</td>
				                        <td>张玲</td>
				                        <td>2016-05-16</td>
				                    </tr>
				                </tbody>
			            	</table>
                    </div>
            	</div>
            </div>
			<div class="row">
				<div class="col-sm-6">
					<div class="dataTables_info" id="dataTables-example_info"
						role="status" aria-live="polite">共8条数据</div>
				</div>
				<div class="col-sm-6">
					<div class="dataTables_paginate paging_simple_numbers"
						id="dataTables-example_paginate">
						<ul class="pagination">
							<li class="paginate_button previous disabled"
								aria-controls="dataTables-example" tabindex="0"
								id="dataTables-example_previous"><a href="#">上一页</a></li>
							<li class="paginate_button active"
								aria-controls="dataTables-example" tabindex="0"><a href="#">1</a></li>
							<li class="paginate_button " aria-controls="dataTables-example"
								tabindex="0"><a href="#">2</a></li>
							<li class="paginate_button " aria-controls="dataTables-example"
								tabindex="0"><a href="#">3</a></li>
							<li class="paginate_button " aria-controls="dataTables-example"
								tabindex="0"><a href="#">4</a></li>
							<li class="paginate_button " aria-controls="dataTables-example"
								tabindex="0"><a href="#">5</a></li>
							<li class="paginate_button " aria-controls="dataTables-example"
								tabindex="0"><a href="#">6</a></li>
							<li class="paginate_button next"
								aria-controls="dataTables-example" tabindex="0"
								id="dataTables-example_next"><a href="#">下一页</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
	                        <strong>标题：</strong> 课程下有教学班，删除课程
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
                            <textarea rows="12" cols="4" class="col-lg-12">1.文件解析后，页面不能上下滚动导致导入按钮不能显示（须切到全屏模式） 2.解析文件必须按照模板格式
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
                            <textarea rows="12" cols="4" class="col-lg-12">文勇: 2016-05-16
                            </textarea>
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
