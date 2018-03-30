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

<title>系统用户列表</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath }/mainpage.do">物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath }/user/listUser.do">业主信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/findListEmployee.do">员工信息管理</a></li>
				<li class="active"><a href="${pageContext.request.contextPath }/adminList.do">系统用户信息管理</a></li>

			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>

<form action="${pageContext.request.contextPath }/adminList.do" method="post">


	<div class="container">
		<table class="table table-striped table-bordered table-hover table-condensed">
			<tr>
				<td><a href="${pageContext.request.contextPath }/addAdmin.do">添加</a></td>
			</tr>
		</table>

		<div class="panel panel-info">
			<div class="panel-heading">
				<h3 class="panel-title">系统用户列表</h3>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover table-condensed">
					<thead>
					<tr>
						<th>ID</th>
						<th>用户名</th>
						<th>角色</th>
						<th>操作</th>
					</tr>
					</thead>
					<tbody>

					<c:forEach items="${adL }" var="item">
						<tr>
							<td>${item.id }</td>
							<td>${item.adminname}</td>
							<td>${item.roleid }</td>

							<td><a href="${pageContext.request.contextPath }/editAdmin.do?id=${item.id}">修改</a></td>
							<td><a href="${pageContext.request.contextPath }/deleteAdmin.do?id=${item.id}">删除</a></td>

						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>

		</div>

	</div>
</form>
</body>

</html>