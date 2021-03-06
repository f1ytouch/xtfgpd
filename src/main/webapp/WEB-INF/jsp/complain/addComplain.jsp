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
                    complainNum: "required",
                    complainName: "required",
                    complainDetails: "required",
                    complainTime: {
                        required: true,
						date: true
					},
                    complainCellphone: "isMobile"
                }
            });

            $("#date1 input").datepicker({
                format: "yyyy-mm-dd",
                language: "zh-CN"
            });
        });
	</script>
<title>投诉信息列表</title>

</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">小区物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath }/listComplain.do">投诉信息管理</a></li>
			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>

<form id="editForm" class="form-horizontal" action="${pageContext.request.contextPath }/insertCompain.do" method="post">
	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">添加投诉</h3>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<label  class="col-sm-2 control-label">门牌号</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="complainNum" value="${item.complainNum }" placeholder="门牌号">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">投诉人</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="complainName" value="${item.complainName }" placeholder="投诉人">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">事件</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="complainDetails" value="${item.complainDetails }" placeholder="事件">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">投诉时间</label>
					<div class="col-sm-6" id="date1">
						<input type="text" class="form-control" name="complainTime" value="${item.complainTime }" placeholder="投诉时间">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">联系电话</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="complainCellphone" value="${iitem.complainCellphone }" placeholder="联系电话">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<%--<div class="form-group">--%>
					<%--<label  class="col-sm-2 control-label">接待人</label>--%>
					<%--<div class="col-sm-6">--%>
						<%--<input type="text" class="form-control" name="complainReceiver" value="${item.complainReceiver }" placeholder="接待人">--%>
					<%--</div>--%>
					<%--<span class="col-sm-4"></span>--%>
				<%--</div>--%>
				<%--<div class="form-group">--%>
					<%--<label  class="col-sm-2 control-label">处理状态</label>--%>
					<%--<div class="col-sm-6">--%>
						<%--<input type="text" class="form-control" name="complainState" value="${item.complainState }" placeholder="处理状态">--%>
					<%--</div>--%>
					<%--<span class="col-sm-4"></span>--%>
				<%--</div>--%>
				<div class="form-group">
					<label  class="col-sm-2 control-label">备注</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="complainRemark" value="${item.complainRemark }" placeholder="备注">
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