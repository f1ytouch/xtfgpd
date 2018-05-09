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

        $(function () {
            $("#editForm").validate({
                rules: {
                    propertyNum: "required",
                    propertyName: "required",
                    propertyUnitcost: "required",
                    propertyUsedate: {
                        required: true,
                        date: true
                    },
                    propertyStopdate: {
                        required: true,
                        date: true
                    },
                    propertyState: "required",
                    propertyChargedate: {
                        required: true,
                        date: true
                    }
                }
            });
        });
	</script>
<title>添加物业单</title>

</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">物业收费管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath }/listWater.do">水费管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listEnergy.do">电费管理</a></li>
				<li class="active"><a href="${pageContext.request.contextPath }/listProperty.do">物业费管理</a></li>
			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
			<li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
		</ul>
	</div>
</nav>

<form id="editForm" class="form-horizontal" action="${pageContext.request.contextPath }/insertProperty.do" method="post">
	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">添加物业单</h3>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<label  class="col-sm-2 control-label">房产编号</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="propertyNum" value="${item.propertyNum }" placeholder="房产编号">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">收费项目名</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="propertyName" value="${item.propertyName }" placeholder="收费项目名">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">单价</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="propertyUnitcost" value="${item.propertyUnitcost }" placeholder="单价">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">总价</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="propertySum" value="${item.propertySum }" placeholder="总价">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">开始时间</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="propertyUsedate" value="${iitem.propertyUsedate }" placeholder="开始时间">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">结束时间</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="propertyStopdate" value="${item.propertyStopdate }" placeholder="结束时间">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">支付状态</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="propertyState" value="${item.propertyState }" placeholder="支付状态">
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