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
			<a class="navbar-brand" href="${pageContext.request.contextPath }/mainpage.do">小区物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath }/user/listUser.do">业主信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/showHouseByPage.do">房产信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listCarport.do">车位信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listEquipment.do">公共设备管理</a></li>
				<li class="active"><a href="${pageContext.request.contextPath }/listProperty.do">物业费管理</a></li>
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

			<%--<div class="col-sm-3 col-sm-offset-8">--%>
				<%--<div class="from-group">--%>
					<%--<form action="${pageContext.request.contextPath }/selectByProNum.do" method="post">--%>
						<%--<div class="input-group">--%>
							<%--<input input type="text" name="propertyNum" placeholder="输入门牌号" class="input-sm form-control">--%>
							<%--<div class="input-group-btn">--%>
								<%--<button class="btn btn-sm btn-info" type="submit">--%>
									<%--Search--%>
								<%--</button>--%>
							<%--</div>--%>
						<%--</div>--%>
					<%--</form>--%>
				<%--</div>--%>
			<%--</div>--%>

			<%--<div class="col-sm-1">--%>
				<%--<a href="${pageContext.request.contextPath }/addProperty.do" class="btn btn-primary btn-sm">添加</a>--%>
			<%--</div>--%>

				<form action="${pageContext.request.contextPath }/searchProperty.do" method="post">
					<div class="col-sm-3">
						<div class="input-group">
							<span class="input-group-addon" >房产编号</span>
							<input type="text" class="form-control"  name="propertyNum" >
						</div>
					</div>
					<div class="col-sm-3">
						<div class="input-group">
							<span class="input-group-addon" >项目名</span>
							<input type="text" class="form-control"  name="propertyName" >
						</div>
					</div>
					<div class="col-sm-2">
						<div class="input-group">
							<span class="input-group-addon" >支付状态</span>
							<input type="text" class="form-control"  name="propertyState" >
						</div>
					</div>
                    <div class="col-sm-2">
                        <div class="input-group">
                            <span class="input-group-addon" >更新时间</span>
                            <input type="text" class="form-control"  name="propertyChargedate" >
                        </div>
                    </div>

					<div class="col-sm-2 ">
						<button class="btn btn-sm btn-info" type="submit">
							Search
						</button>
						<a href="${pageContext.request.contextPath }/user/addUser.do" class="btn btn-primary btn-sm">添加</a>
					</div>
				</form>
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

							<td><a class="btn btn-success btn-sm glyphicon glyphicon-check" href="${pageContext.request.contextPath }/editProperty.do?id=${item.propertyId}">确认收款</a></td>
							<td><a class="btn btn-danger btn-sm glyphicon glyphicon-trash" href="${pageContext.request.contextPath }/deleteProperty.do?id=${item.propertyId}">删除</a></td>

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
					<li><a href="${pageContext.request.contextPath }/showPropertyByPage.do?pageNow=1">首页</a></li>
					<c:choose>
						<c:when test="${page.pageNow - 1 > 0}">
							<li><a href="${pageContext.request.contextPath }/showPropertyByPage.do?pageNow=${page.pageNow - 1}">上一页</a></li>
						</c:when>
						<c:when test="${page.pageNow - 1 <= 0}">
							<li><a href="${pageContext.request.contextPath }/showPropertyByPage.do?pageNow=1">上一页</a></li>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${page.totalPageCount==0}">
							<li><a href="${pageContext.request.contextPath }/showPropertyByPage.do?pageNow=${page.pageNow}">下一页</a></li>
						</c:when>
						<c:when test="${page.pageNow + 1 < page.totalPageCount}">
							<li><a href="${pageContext.request.contextPath }/showPropertyByPage.do?pageNow=${page.pageNow + 1}">下一页</a></li>
						</c:when>
						<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
							<li><a href="${pageContext.request.contextPath }/showPropertyByPage.do?pageNow=${page.totalPageCount}">下一页</a></li>
						</c:when>
					</c:choose>

					<c:choose>
						<c:when test="${page.totalPageCount==0}">
							<li><a href="${pageContext.request.contextPath }/showPropertyByPage.do?pageNow=${page.pageNow}">尾页</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="${pageContext.request.contextPath }/showPropertyByPage.do?pageNow=${page.totalPageCount}">尾页</a></li>
						</c:otherwise>
					</c:choose>
				</ul>

			</div>
		</div>
	</div>

<!-- 模态框（Modal） -->
<form method="post" action="${pageContext.request.contextPath }/editPropertySubmit.do" method="post" class="form-horizontal" role="form" id="myForm" onsubmit="return ">
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="btn-danger modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h4 class="modal-title" id="myModalLabel">
						模态框（Modal）标题
					</h4>
				</div>
				<div class="modal-body">
					<form class="bs-example bs-example-form" role="form">
						<div class="form-group">
							<label  class="col-sm-2 control-label">支付状态</label>
							<div class="col-sm-6">
								<%--<input type="text" class="form-control" name="propertyState" value="${item.propertyState }" placeholder="支付状态">--%>
								<label class="radio-inline">
									<input type="radio" name="propertyState" value="已支付" checked="">已支付
								</label>
								<label class="radio-inline">
									<input type="radio" name="propertyState" value="未支付">未支付
								</label>
							</div>
							<span class="col-sm-4"></span>
						</div>
						<div class="form-group">
							<label  class="col-sm-2 control-label">更新时间</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="propertyChargedate" value="${item.propertyChargedate }" placeholder="更新时间">
							</div>
							<span class="col-sm-4"></span>
						</div>
						<div class="form-group">
							<label  class="col-sm-2 control-label">收款人</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="propertyPayee" value="${item.propertyPayee }" placeholder="收款人">
							</div>
							<span class="col-sm-4"></span>
						</div>
						<div class="form-group">
							<label  class="col-sm-2 control-label">收款方式</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="propertyWay" value="${item.propertyWay }" placeholder="收款方式">
							</div>
							<span class="col-sm-4"></span>
						</div>
						<div class="form-group">
							<label  class="col-sm-2 control-label">备注</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="propertyRemark" value="${item.propertyRemark }" placeholder="备注">
							</div>
							<span class="col-sm-4"></span>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="submit" class="btn btn-primary">
						提交更改
					</button>
				</div>
			</div>
		</div>
	</div>
</form>
</body>

</html>