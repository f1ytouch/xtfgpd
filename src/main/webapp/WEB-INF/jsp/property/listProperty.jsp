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
<title>物业收费列表</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath }/mainpage.do">物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath }/listWater.do">水费信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listEnergy.do">电费信息管理</a></li>
				<li class="active"><a href="${pageContext.request.contextPath }/listProperty.do">物业费管理</a></li>
			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>

	<div class="container">

		<div class="row">
			<div class="col-sm-9 m-b-xs">
				<a href="${pageContext.request.contextPath }/addProperty.do" class="btn btn-primary btn-sm">添加</a>
			</div>
			<div class="col-sm-3">
				<div class="from-group">
					<form action="${pageContext.request.contextPath }/selectByProNum.do" method="post">
						<div class="input-group">
							<input input type="text" name="propertyNum" placeholder="输入门牌号" class="input-sm form-control">
							<div class="input-group-btn">
								<button class="btn btn-sm btn-primary" type="submit">
									Search
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">物业收费单列表</h3>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover table-condensed">
					<thead>
					<tr>
						<th>编号</th>
						<th>房产编号</th>
						<th>收费项目名</th>
						<th>单价</th>
						<th>总价</th>
						<th>开始时间</th>
						<th>结束时间</th>
						<th>支付状态</th>
						<th>更新时间</th>
						<th>收款人</th>
						<th>收款方式</th>
						<th>备注</th>
						<th>操作</th>
					</tr>
					</thead>
					<tbody>

					<c:forEach items="${pro }" var="item">
						<tr>
							<td>${item.propertyId }</td>
							<td>${item.propertyNum }</td>
							<td>${item.propertyName}</td>
							<td>${item.propertyUnitcost }</td>
							<td>${item.propertySum }</td>
							<td>${item.propertyUsedate}</td>
							<td>${item.propertyStopdate }</td>
							<td>${item.propertyState }</td>
							<td>${item.propertyChargedate}</td>
							<td>${item.propertyPayee}</td>
							<td>${item.propertyWay}</td>
							<td>${item.propertyRemark}</td>

							<td><a href="${pageContext.request.contextPath }/editProperty.do?id=${item.propertyId}">修改</a></td>
							<td><a href="${pageContext.request.contextPath }/deleteProperty.do?id=${item.propertyId}">删除</a></td>

						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>

</html>