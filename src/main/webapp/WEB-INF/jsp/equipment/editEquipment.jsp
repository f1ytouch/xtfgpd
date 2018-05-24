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
	<link rel="stylesheet" href="/bootstrap/css/bootstrap-datepicker3.min.css">
	<script src="/bootstrap/js/jquery-3.3.1.min.js"></script>
	<script src="/bootstrap/js/bootstrap.min.js"></script>
	<script src="/bootstrap/js/jquery.validate.min.js"></script>
	<script src="/bootstrap/js/messages_zh.min.js"></script>
	<script src="/bootstrap/js/bootstrap-datepicker.min.js"></script>
	<script src="/bootstrap/js/bootstrap-datepicker.zh-CN.min.js"></script>
	<script>
        $(function () {
            $("#editForm").validate({
                rules: {
                    energyNum: "required",
                    energyUnitcost: "required",
                    energySum: "required",
                    energyUsedate: {
                        required: true,
                        date: true
                    },
                    energyStopdate: {
                        required: true,
                        date: true
                    },
                    energyState: "required",
                    energyCompany: "required"
                }
            });

            $("#date1 input").datepicker({
                format: "yyyy-mm-dd",
                language: "zh-CN"
            });
        });
	</script>
<title>更新设备信息</title>

</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">小区物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">

				<li class="active"><a href="${pageContext.request.contextPath }/listEquipment.do">公共设备管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listProperty.do">物业费管理</a></li>

			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>

<form id="editForm" class="form-horizontal" action="${pageContext.request.contextPath }/editEquipmentSubmit.do" method="post">
	<input type="hidden" name="equipmentId" value="${item.equipmentId }"/>
	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">更新信息</h3>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<label  class="col-sm-2 control-label">设施名称</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="equipmentName" value="${item.equipmentName }" placeholder="设施名称">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">费用</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="equipmentCost" value="${item.equipmentCost }" placeholder="费用">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">采购人</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="equipmentMan" value="${item.equipmentMan }" placeholder="采购人">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">供应商</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="equipmentSupplier" value="${item.equipmentSupplier }" placeholder="供应商">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">联系电话</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="equipmentPhone" value="${item.equipmentPhone }" placeholder="联系电话">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">购入时间</label>
					<div class="col-sm-6" id="date1">
						<input type="text" class="form-control" name="equipmentTime" value="${item.equipmentTime }" placeholder="购入时间">
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