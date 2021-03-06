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
	<link rel="stylesheet" href="/bootstrap/css/bootstrap-datepicker3.min.css">
	<script src="./bootstrap/js/jquery-3.3.1.min.js"></script>
	<script src="./bootstrap/js/bootstrap.min.js"></script>
	<script src="/bootstrap/js/jquery.validate.min.js"></script>
	<script src="/bootstrap/js/messages_zh.min.js"></script>
	<script src="/bootstrap/js/bootstrap-datepicker.min.js"></script>
	<script src="/bootstrap/js/bootstrap-datepicker.zh-CN.min.js"></script>
	<script>
        jQuery.validator.addMethod("isMobile", function(value, element) {
            var length = value.length;
            var regPhone = /^1([3578]\d|4[57])\d{8}$/;
            return this.optional(element) || ( length == 11 && regPhone.test( value ) );
        }, "请正确填写您的手机号码");

        $(function () {
            $("#editForm").validate({
                rules: {
                    repairsName: "required",
                    repairsDetails: "required",
                    repairsStartime: {
                        required: true,
						dateISO: true
					},
                    repairsRemark: "isMobile"
                }
            });

            $("#date1 input").datepicker({
                format: "yyyy-mm-dd",
                language: "zh-CN"
            });
        });
	</script>
<title>添加维修记录</title>

</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">小区物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath }/listRepairs.do">维修记录管理</a></li>
			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>

<form id="editForm" class="form-horizontal" action="${pageContext.request.contextPath }/insertRepairs.do" method="post">
	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">添加维修记录</h3>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<label  class="col-sm-2 control-label">申请人</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="repairsName" value="${item.repairsName }" placeholder="申请人">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">报修内容</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="repairsDetails" value="${item.repairsDetails }" placeholder="报修内容">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">申报时间</label>
					<div class="col-sm-6" id="date1">
						<input type="text" class="form-control" name="repairsStartime" value="${item.repairsStartime }" placeholder="申报时间">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<%--<div class="form-group">--%>
					<%--<label  class="col-sm-2 control-label">维修进度</label>--%>
					<%--<div class="col-sm-6">--%>
						<%--<input type="text" class="form-control" name="repairsPlan" value="${item.repairsPlan }" placeholder="维修进度">--%>
					<%--</div>--%>
					<%--<span class="col-sm-4"></span>--%>
				<%--</div>--%>
				<%--<div class="form-group">--%>
					<%--<label  class="col-sm-2 control-label">费用</label>--%>
					<%--<div class="col-sm-6">--%>
						<%--<input type="text" class="form-control" name="repairsCost" value="${item.repairsCost }" placeholder="费用">--%>
					<%--</div>--%>
					<%--<span class="col-sm-4"></span>--%>
				<%--</div>--%>
				<%--<div class="form-group">--%>
					<%--<label  class="col-sm-2 control-label">支付状态</label>--%>
					<%--<div class="col-sm-6">--%>
						<%--<input type="text" class="form-control" name="repairsPaystate" value="${item.repairsPaystate }" placeholder="支付状态">--%>
					<%--</div>--%>
					<%--<span class="col-sm-4"></span>--%>
				<%--</div>--%>
				<div class="form-group">
					<label  class="col-sm-2 control-label">联系电话</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="repairsRemark" value="${item.repairsRemark }" placeholder="联系电话">
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