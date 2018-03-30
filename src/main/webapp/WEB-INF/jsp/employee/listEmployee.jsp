<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<title>员工列表</title>
</head>
<body> 
<form action="${pageContext.request.contextPath }" method="post">
查询条件：

<table width="100%" border=1>
	<tr>
		<td><a href="${pageContext.request.contextPath }/addEmployee.do">添加员工</a></td>
	</tr>
</table>
	<table width="100%" border=1>
		<tr>
			<td><a href="${pageContext.request.contextPath }">查询</a></td>
		</tr>
	</table>
商品列表：
<table width="100%" border=1>
<tr><td>员工编号</td>
	<td>员工姓名</td>
	<td>性别</td>
	<td>工种</td>
	<td>在职状态</td>
	<td>操作</td>


</tr>
<c:forEach items="${emp }" var="item">
<tr>
	<td>${item.employeeId }</td>
	<td>${item.employeeName }</td>
	<td>${item.employeeSex}</td>
	<td>${item.employeeStation }</td>
	<td>${item.employeeState }</td>

	
	<%--<td><a href="${pageContext.request.contextPath }/items/editItems.action?id=${item.id}">修改</a></td>--%>
	<%--<td><a href="${pageContext.request.contextPath }/user/viewUser/${item.id}">详情</a></td>--%>
	<td><a href="${pageContext.request.contextPath }/editEmployee.do?id=${item.employeeId}">修改</a></td>
	<td><a href="${pageContext.request.contextPath }/deleteEmployee.do?id=${item.employeeId}">删除</a></td>

</tr>
</c:forEach>
</table>
</form>
</body>

</html>