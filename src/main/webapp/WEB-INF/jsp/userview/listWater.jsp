<%--
  Created by IntelliJ IDEA.
  User: ixuc
  Date: 2018/2/5
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
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

<title>查询商品列表</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath }/userpage.do">物业收费管理系统</a>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>


<div class="container">

	<div class="row">

		<div class="col-sm-3">
			<div class="from-group">
				<form action="${pageContext.request.contextPath }/userview/selectByWaterNum.do" method="post">
					<div class="input-group">
						<input input type="text" name="waterNum" placeholder="输入门牌号" class="input-sm form-control">
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
			<h3 class="panel-title">水费单列表</h3>
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
					<th>供水公司</th>
					<th>备注</th>
					<th>操作</th>
				</tr>
				</thead>
				<tbody>

				<c:forEach items="${water }" var="item">
					<tr>
						<td>${item.waterId }</td>
						<td>${item.waterNum }</td>
						<td>${item.waterUnitcost}</td>
						<td>${item.waterSum }</td>
						<td>${item.waterUsedate }</td>
						<td>${item.waterStopdate }</td>
						<td>${item.waterState}</td>
						<td>${item.waterCompany}</td>
						<td>${item.waterRemark }</td>

					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>

</html>