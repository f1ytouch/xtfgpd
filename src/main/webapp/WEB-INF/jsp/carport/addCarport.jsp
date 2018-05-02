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
	<script src="/bootstrap/js/jquery.validate.min.js"></script>
	<script src="/bootstrap/js/messages_zh.min.js"></script>
	<script>
        jQuery.validator.addMethod("isMobile", function(value, element) {
            var length = value.length;
            var regPhone = /^1([3578]\d|4[57])\d{8}$/;
            return this.optional(element) || ( length == 11 && regPhone.test( value ) );
        }, "请正确填写您的手机号码");

        $(function () {
            $("#editForm").validate({
                rules: {
                    carportNum: "required",
                    carportType: "required",
                    carportArea: "required",
                    carportUsedate: {
                        required: true,
                        date: true
                    },
                    carportStopdate: {
                        required: true,
                        date: true
                    },
                    carportCellphone: "isMobile",
                    carportCost: "number"

                }
            });
        });
	</script>
<title>添加车位</title>

</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath }/listCarport.do">车位信息管理</a></li>
			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>

<form id="editForm" class="form-horizontal" action="${pageContext.request.contextPath }/insertCarport.do" method="post">
	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">添加车位信息</h3>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<label  class="col-sm-2 control-label">门牌号</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="carportNum" value="${item.carportNum }" placeholder="门牌号">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">车辆类型</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="carportType" value="${item.carportType }" placeholder="车辆类型">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">车位面积</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="carportArea" value="${item.carportArea }" placeholder="车位面积">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">车牌号</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="carportPlatenum" value="${item.carportPlatenum }" placeholder="车牌号">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">启用时间</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="carportUsedate" value="${iitem.carportUsedate }" placeholder="启用时间">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">停用时间</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="carportStopdate" value="${item.carportStopdate }" placeholder="停用时间">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">联系电话</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="carportCellphone" value="${item.carportCellphone }" placeholder="联系电话">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">车位费用</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="carportCost" value="${item.carportCost }" placeholder="车位费用">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">备注</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="carportRemark" value="${item.carportRemark }" placeholder="备注">
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