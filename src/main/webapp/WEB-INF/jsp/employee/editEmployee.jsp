<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加员工</title>

</head>
<body> 
<form id="itemForm" action="${pageContext.request.contextPath }/updateEmployee.do" method="post" >
<input type="text" name="id" value="${item.employeeId }"/>
更新员工信息：
<table width="100%" border=1>


	<tr>
		<td>员工姓名</td>
		<td><input type="text" name="employeeName" value="${item.employeeName }"/></td>
	</tr>

	<tr>
		<td>性别</td>
		<td><input type="text" name="employeeSex" value="${item.employeeSex }"/></td>
	</tr>
	<tr>
		<td>员工身份证</td>
		<td><input type="text" name="employeeIdcard" value="${item.employeeIdcard }"/></td>
	</tr>
	<tr>
		<td>学历</td>
		<td><input type="text" name="employeeEducation" value="${item.employeeEducation }"/></td>
	</tr>

	<tr>
		<td>籍贯</td>
		<td><input type="text" name="employeeOrigo" value="${item.employeeOrigo }"/></td>
	</tr>
	<tr>
		<td>家庭地址</td>
		<td><input type="text" name="employeeAddress" value="${item.employeeAddress }"/></td>
	</tr>
	<tr>
		<td>入职时间</td>
		<td><input type="text" name="employeeHiredate" value="${item.employeeHiredate }"/></td>
	</tr>
	<tr>
		<td>工种</td>
		<td><input type="text" name="employeeStation" value="${item.employeeStation }"/></td>
	</tr>

	<tr>
		<td>在职状态</td>
		<td><input type="text" name="employeeState" value="${item.employeeState }"/></td>
	</tr>
	<tr>
		<td>离职时间</td>
		<td><input type="text" name="employeeLeavedate" value="${item.employeeLeavedate }"/></td>
	</tr>

	<tr>
		<td>离职原因</td>
		<td><input type="text" name="employeeRfl" value="${item.employeeRfl }"/></td>
	</tr>



	<tr>
	<td colspan="2" align="center"><input type="submit" value="提交"/></td>
	</tr>
</table>

</form>
</body>

</html>