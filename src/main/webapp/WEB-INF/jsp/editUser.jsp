<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="/bootstrap/js/jquery-3.3.1.min.js"></script>
	<script src="/bootstrap/js/bootstrap.min.js"></script>
<title>业主信息更新</title>

</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath }/mainpage.do">物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath }/user/listUser.do">业主信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/findListEmployee.do">员工信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/adminList.do">系统用户信息管理</a></li>

			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>

<form id="editForm" class="form-horizontal" action="${pageContext.request.contextPath }/user/editUserSubmit.do" method="post" >
<input type="hidden" name="id" value="${item.id }"/>
	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">更新业主信息</h3>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<label  class="col-sm-2 control-label">门牌号</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="phone" value="${item.phone }" placeholder="门牌号">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">业主姓名</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="username" value="${item.username }" placeholder="业主姓名">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">身份证</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="idcard" value="${item.idcard }" placeholder="身份证">
					</div>
					<span class="col-sm-4"></span>
				</div>

				<div class="form-group">
					<label  class="col-sm-2 control-label">联系方式</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="cellphone" value="${item.cellphone }" placeholder="联系方式">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">备注</label>
					<div class="col-sm-6">
						<textarea name="remark" class="form-control" rows="3">${item.remark}</textarea>
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