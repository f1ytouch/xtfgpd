<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
	<script src="./bootstrap/js/jquery-3.3.1.min.js"></script>
	<script src="./bootstrap/js/bootstrap.min.js"></script>
	<script src="/bootstrap/js/jquery.validate.min.js"></script>
	<script src="/bootstrap/js/messages_zh.min.js"></script>
	<script>
        $(function () {
            $("#adminForm").validate({
                rules: {
                    adminname: "required",
                    adminpwd: "required",
                    roleid: "required"
                }
            });
        });
	</script>

</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath }/mainpage.do">物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath }/adminList.do">系统用户信息管理</a></li>
			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>


<form id="adminForm" class="form-horizontal" action="${pageContext.request.contextPath }/insertAdmin.do" method="post" >

	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">添加系统用户</h3>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<label  class="col-sm-2 control-label">系统用户名</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="adminname" value="${admin.adminname }" placeholder="系统用户名">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">用户密码</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="adminpwd" value="${admin.adminpwd }" placeholder="用户密码">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">角色</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="roleid" value="${admin.roleid }" placeholder="角色">
					</div>
					<span class="col-sm-4"></span>
				</div>

				<div class="form-group">
					<label  class="col-sm-2 control-label"></label>
					<div class="col-sm-6">
						<button type="submit" class="btn btn-success">提交</button>
					</div>
					<span class="col-sm-4"></span>
				</div>
			</div>
		</div>
	</div>
</form>
</body>

</html>