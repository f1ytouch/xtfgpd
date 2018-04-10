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
<title>添加员工</title>

</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath }/findListEmployee.do">员工信息管理</a></li>
			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>

<form id="editForm" class="form-horizontal" action="${pageContext.request.contextPath }/updateEmployee.do" method="post">
	<input type="hidden" name="employeeId" value="${item.employeeId }"/>
	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">更新员工信息</h3>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<label  class="col-sm-2 control-label">员工姓名</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="employeeName" value="${item.employeeName }" placeholder="员工姓名">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">性别</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="employeeSex" value="${item.employeeSex }" placeholder="性别">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">身份证</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="employeeIdcard" value="${item.employeeIdcard }" placeholder="身份证">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">学历</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="employeeEducation" value="${item.employeeEducation }" placeholder="学历">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">籍贯</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="employeeOrigo" value="${item.employeeOrigo }" placeholder="籍贯">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">家庭地址</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="employeeAddress" value="${item.employeeAddress }" placeholder="家庭地址">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">入职时间</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="employeeHiredate" value="${item.employeeHiredate }" placeholder="家庭地址">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">工种</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="employeeStation" value="${item.employeeStation }" placeholder="工种">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">在职状态</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="employeeState" value="${item.employeeState }" placeholder="家庭地址">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">离职时间</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="employeeLeavedate" value="${item.employeeLeavedate }" placeholder="家庭地址">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">离职原因</label>
					<div class="col-sm-6">
						<textarea name="employeeRfl" class="form-control" rows="3">${item.employeeRfl }</textarea>
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