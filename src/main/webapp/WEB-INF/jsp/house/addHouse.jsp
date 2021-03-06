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
	<script src="/bootstrap/js/jquery.validate.min.js"></script>
	<script src="/bootstrap/js/messages_zh.min.js"></script>
	<script src="./bootstrap/js/bootstrap.min.js"></script>
	<script>
		$(function () {
			$("#editForm").validate({
				rules: {
                    houseId: "required",
                    houseNum: "required",
                    houseLoudonghao: "required",
                    houseDanyuanhao: "required",
                    houseType: "required",
                    houseArea: "required",
                    houseState: "required"
				}
			});
        });
	</script>
<title>添加房产信息</title>

</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">小区物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath }/listHouse.do">房产信息管理</a></li>
			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>

<form id="editForm" class="form-horizontal" action="${pageContext.request.contextPath }/insertHouse.do" method="post">
	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">添加房产信息</h3>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<label  class="col-sm-2 control-label">房产编号</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="houseId" value="${item.houseId }" placeholder="房产编号">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">门牌号</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="houseNum" value="${item.houseNum }" placeholder="门牌号">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">楼栋号</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="houseLoudonghao" value="${item.houseLoudonghao }" placeholder="楼栋号">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">单元号</label>
					<div class="col-sm-6">
						<%--<input type="text" class="form-control" name="houseDanyuanhao" value="${item.houseDanyuanhao }" placeholder="单元号">--%>
							<select class="form-control" name="houseDanyuanhao" >
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">户型</label>
					<div class="col-sm-6">
						<%--<input type="text" class="form-control" name="houseType" value="${item.houseType }" placeholder="户型">--%>
							<label class="radio-inline">
								<input type="radio" name="houseType" value="三房两厅" checked="">三房两厅
							</label>
							<label class="radio-inline">
								<input type="radio" name="houseType" value="四房两厅" checked>四房两厅
							</label>
							<label class="radio-inline">
								<input type="radio" name="houseType" value="五房两厅">五房两厅
							</label>
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">房产面积</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="houseArea" value="${iitem.houseArea }" placeholder="房产面积">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">状态</label>
					<div class="col-sm-6">
						<%--<input type="text" class="form-control" name="houseState" value="${item.houseState }" placeholder="状态">--%>
							<label class="radio-inline">
								<input type="radio" name="houseState" value="已入住" checked="">已入住
							</label>
							<label class="radio-inline">
								<input type="radio" name="houseState" value="销售中">销售中
							</label>
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">备注</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="houseRemark" value="${item.houseRemark }" placeholder="备注">
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