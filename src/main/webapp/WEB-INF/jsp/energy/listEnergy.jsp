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
<title>电费列表</title>
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
				<li><a href="${pageContext.request.contextPath }/adminList.do">系统用户信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listRepairs.do">维修记录管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listComplain.do">投诉信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listCarport.do">车位信息管理</a></li>
				<li class="active"><a href="${pageContext.request.contextPath }/listCarport.do">电费信息管理</a></li>

			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>

<form action="${pageContext.request.contextPath }" method="post">


	<div class="container">
		<table class="table table-striped table-bordered table-hover table-condensed">
			<tr>
				<td><a href="${pageContext.request.contextPath }/addEnergy.do">添加电费单</a></td>
			</tr>
		</table>

		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">电费列表</h3>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover table-condensed">
					<thead>
					<tr>
						<th>编号</th>
						<th>门牌号</th>
						<th>单价</th>
						<th>使用总量</th>
						<th>开始时间</th>
						<th>结束时间</th>
						<th>支付状态</th>
						<th>供电公司</th>
						<th>备注</th>
						<th>操作</th>
					</tr>
					</thead>
					<tbody>

					<c:forEach items="${energy }" var="item">
						<tr>
							<td>${item.energyId }</td>
							<td>${item.energyNum }</td>
							<td>${item.energyUnitcost}</td>
							<td>${item.energySum }</td>
							<td>${item.energyUsedate }</td>
							<td>${item.energyStopdate }</td>
							<td>${item.energyState}</td>
							<td>${item.energyCompany}</td>
							<td>${item.energyRemark }</td>
							<td><a href="${pageContext.request.contextPath }/editEnergy.do?id=${item.energyId}">修改</a></td>
							<td><a href="${pageContext.request.contextPath }/deleteEnergy.do?id=${item.energyId}">删除</a></td>

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