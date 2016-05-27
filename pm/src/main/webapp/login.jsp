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
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">用户登录</h3>
                    </div>
                    <div class="panel-body">
                        <form action="<c:url value="/login"/>" role="form" method="post">
                            <fieldset>
                            	<c:if test="${not empty errorMsg}">
                            	<div class="form-group">
                                	<p class="text-danger"><c:out value="${errorMsg}"/></p>
                                </div>
                            	</c:if>
                                <div class="form-group">
                                	<input class="form-control" placeholder="用户名" name="userId" type="text" value="">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="密码" name="password" type="password" value="">
                                </div>
                                <!-- <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">自动登录
                                    </label>
                                </div>
                                 -->
                                <button type="submit" class="btn btn-lg btn-success btn-block">登录</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="/commonScripts.jsp"></jsp:include>
</body>

</html>
