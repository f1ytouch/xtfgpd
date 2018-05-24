<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
	<script src="/bootstrap/js/jquery-3.3.1.min.js"></script>
	<script src="/bootstrap/js/bootstrap.min.js"></script>
<title>员工列表</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath }/userpage.do">小区物业收费管理系统</a>
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
				<a href="${pageContext.request.contextPath }/userview/useraddComplain.do" class="btn btn-primary btn-sm">添加</a>
			</div>
			<div class="col-sm-3">
				<div class="from-group">
					<form action="${pageContext.request.contextPath }/userview/selectBycomplainNum.do" method="post">
						<div class="input-group">
							<input input type="text" name="complainNum" placeholder="输入门牌号" class="input-sm form-control">
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
				<h3 class="panel-title">投诉信息列表</h3>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover table-condensed">
					<thead>
					<tr>
						<th>编号</th>
						<th>门牌号</th>
						<th>投诉人</th>
						<th>投诉内容</th>
						<th>投诉时间</th>
						<th>联系电话</th>
						<th>接待人</th>
						<th>处理状态</th>
						<th>备注</th>
						<th>操作</th>
					</tr>
					</thead>
					<tbody>

					<c:forEach items="${complain }" var="item">
						<tr>
							<td>${item.complainId }</td>
							<td>${item.complainNum }</td>
							<td>${item.complainName}</td>
							<td>${item.complainDetails }</td>
							<td>${item.complainTime }</td>
							<td>${item.complainCellphone}</td>
							<td>${item.complainReceiver }</td>
							<td>${item.complainState }</td>
							<td>${item.complainRemark}</td>

							<td><a href="${pageContext.request.contextPath }/userview/deleteComplain.do?id=${item.complainId}">删除</a></td>

						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>

</html>