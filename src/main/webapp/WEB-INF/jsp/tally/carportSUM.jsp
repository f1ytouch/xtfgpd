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
            var chart = {
                type: 'pie'
            };
            var title = {
                text: '车位数量统计'
            };
            var tooltip = {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            };

            var data = {
                table: 'table'
            };


            var json = {};
            json.chart = chart;
            json.title = title;
            json.tooltip = tooltip;
            json.data = data;

            $('#con').highcharts(json);

        })

    </script>
</head>
<body>



<div class="container">

    <ul class="nav nav-pills">
        <li class="active"><a href="${pageContext.request.contextPath }/mainpage.do">返回</a></li>
        <li><a href="${pageContext.request.contextPath }/showSUM.do">收费统计</a></li>
        <li><a href="${pageContext.request.contextPath }/carportSUM.do">车位统计</a></li>
    </ul>
    <div class="row">

        <div id="con"style="width: 550px; height: 400px; margin: 0 auto"></div>
    </div>

    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">统计列表</h3>
        </div>
        <div class="panel-body">

            <table class="table table-striped table-bordered table-hover table-condensed" id="table">
                <thead>
                <tr>
                    <th>#</th>

                    <th>数量</th>
                </tr>
                </thead>
                <tbody>

                <tr>
                    <th>已缴费用</th>

                    <td>236</td>
                </tr>
                <tr>
                    <th>未缴费用</th>

                    <td>364</td>
                </tr>

                </tbody>
            </table>
        </div>


    </div>
</div>


</div>




</body>
</html>