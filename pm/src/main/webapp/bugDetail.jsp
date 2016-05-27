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
                        		<form id="bugInfo">
		                        	<div class="row">
		                        		<div class="col-lg-3">
                        					<div class="form-group">
		                        				<label>Bug ID</label>
		                                        <input class="form-control" id="bugId" type="text" placeholder="自动生成" disabled>
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
		                                        <select class="form-control">
		                                            <option>管理后台</option>
		                                            <option>安卓App</option>
		                                            <option>iOs App</option>
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
