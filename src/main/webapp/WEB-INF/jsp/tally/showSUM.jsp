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
	<script src="/bootstrap/js/highcharts.js"></script>
	<script src="/bootstrap/js/data.js"></script>
	<script src="/bootstrap/tableExport/tableExport.js"></script>

	<script>
        $(function() {
            $('#btn').click(function() {
                $('#datatable').tableExport({
                    type:'excel',
                    separator:';',
                    escape:'false'
                });
            });

            var data = {
                table: 'datatable'
            };
            var chart = {
                type: 'column'
            };
            var title = {
                text: '最近三个月收费统计图'
            };
            var yAxis = {
                allowDecimals: false,
                title: {
                    text: '人民币'
                }
            };
            var tooltip = {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        this.point.y + ' ' + this.point.name.toLowerCase();
                }
            };
            var credits = {
                enabled: false
            };

            var json = {};
            json.chart = chart;
            json.title = title;
            json.data = data;
            json.yAxis = yAxis;
            json.credits = credits;
            json.tooltip = tooltip;
            $('#container').highcharts(json);
        })

	</script>
<title>列表</title>
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
				<li><a href="${pageContext.request.contextPath }/listHouse.do">房产信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listCarport.do">车位信息管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listEquipment.do">公共设备管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listProperty.do">物业费管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listRepairs.do">维修记录管理</a></li>
				<li><a href="${pageContext.request.contextPath }/listComplain.do">投诉信息管理</a></li>
				<li class="active"><a href="${pageContext.request.contextPath }/showSUM.do">统计汇总</a></li>
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

<div id="container" style="width: 550px; height: 400px; margin: 0 auto"></div>

			<div class="container">

				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">收费统计列表</h3>
					</div>
					<div class="panel-body">
						<div><button id="btn" class="btn-sm btn-primary"></button></div>

						<table class="table table-striped table-bordered table-hover table-condensed" id="datatable">
							<thead>
							<tr>
								<th>收费项目</th>
								<th>3月</th>
								<th>4月</th>
								<th>5月</th>
							</tr>
							</thead>
							<tbody>
                            <c:forEach items="${tally}" var="item">
                                <tr>
                                    <td>${item.name }</td>
                                    <td>${item.one }</td>
                                    <td>${item.two }</td>
                                    <td>${item.three }</td>
                                </tr>

                            </c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>

</body>

</html>