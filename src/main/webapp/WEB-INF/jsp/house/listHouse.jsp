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
<title>房产列表</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath }/mainpage.do">小区物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath }/user/showUserByPage.do">业主信息管理</a></li>
				<li class="active"><a href="${pageContext.request.contextPath }/showHouseByPage.do">房产信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/showCarportByPage.do">车位信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listEquipment.do">公共设备管理</a></li>
				<li><a href="${pageContext.request.contextPath }/showPropertyByPage.do">物业费管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listRepairs.do">维修记录管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listComplain.do">投诉信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/showSUM.do">统计汇总</a></li>
				<li><a href="${pageContext.request.contextPath }/findListEmployee.do">员工信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/adminList.do">系统用户信息管理</a></li>

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

			<div class="col-sm-3 col-sm-offset-8">
				<div class="from-group">
					<form action="${pageContext.request.contextPath }/selectByHouseNum.do" method="post">
						<div class="input-group">
							<input input type="text" name="houseId" placeholder="输入房产编号" class="input-sm form-control">
							<div class="input-group-btn">
								<button class="btn btn-sm btn-info" type="submit">
									Search
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>

			<div class="col-sm-1">
				<a href="${pageContext.request.contextPath }/addHouse.do" class="btn btn-primary btn-sm">添加</a>
			</div>
		</div>

		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">房产列表</h3>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover table-condensed">
					<thead>
					<tr>
						<th>房产编号</th>
						<th>门牌号</th>
						<th>楼栋号</th>
						<th>单元号</th>
						<th>户型</th>
						<th>房产面积</th>
						<th>状态</th>
						<th>备注</th>
						<th>操作</th>
					</tr>
					</thead>
					<tbody>

					<c:forEach items="${house }" var="item">
						<tr>
							<td>${item.houseId }</td>
							<td>${item.houseNum }</td>
							<td>${item.houseLoudonghao}</td>
							<td>${item.houseDanyuanhao }</td>
							<td>${item.houseType }</td>
							<td>${item.houseArea }</td>
							<td>${item.houseState}</td>
							<td>${item.houseRemark}</td>
							<td><a class="btn btn-success btn-sm glyphicon glyphicon-pencil" href="${pageContext.request.contextPath }/editHouse.do?id=${item.houseId}">修改</a></td>
							<td><a class="btn btn-danger btn-sm glyphicon glyphicon-trash" href="${pageContext.request.contextPath }/deleteHouse.do?id=${item.houseId}">删除</a></td>

						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

        <div class="row">

		<!-- 分页文字信息 -->
		<div class="col-sm-6">
			当前${page.pageNow}页,总${page.totalPageCount}页,总${page.totalCount}条记录
		</div>
		<!-- 分页条信息 -->
		<div class="col-sm-6">

			<ul class="pagination">
				<li><a href="${pageContext.request.contextPath }/showHouseByPage.do?pageNow=1">首页</a></li>
				<c:choose>
					<c:when test="${page.pageNow - 1 > 0}">
						<li><a href="${pageContext.request.contextPath }/showHouseByPage.do?pageNow=${page.pageNow - 1}">上一页</a></li>
					</c:when>
					<c:when test="${page.pageNow - 1 <= 0}">
						<li><a href="${pageContext.request.contextPath }/showHouseByPage.do?pageNow=1">上一页</a></li>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${page.totalPageCount==0}">
						<li><a href="${pageContext.request.contextPath }/showHouseByPage.do?pageNow=${page.pageNow}">下一页</a></li>
					</c:when>
					<c:when test="${page.pageNow + 1 < page.totalPageCount}">
						<li><a href="${pageContext.request.contextPath }/showHouseByPage.do?pageNow=${page.pageNow + 1}">下一页</a></li>
					</c:when>
					<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
						<li><a href="${pageContext.request.contextPath }/showHouseByPage.do?pageNow=${page.totalPageCount}">下一页</a></li>
					</c:when>
				</c:choose>

				<c:choose>
					<c:when test="${page.totalPageCount==0}">
						<li><a href="${pageContext.request.contextPath }/showHouseByPage.do?pageNow=${page.pageNow}">尾页</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath }/showHouseByPage.do?pageNow=${page.totalPageCount}">尾页</a></li>
					</c:otherwise>
				</c:choose>
			</ul>

		</div>
	</div>
	</div>

</body>

</html>