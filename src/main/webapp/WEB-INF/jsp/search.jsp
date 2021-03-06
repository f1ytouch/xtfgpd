<%--
  Created by IntelliJ IDEA.
  User: ixuc
  Date: 2018/2/5
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="/bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>

    <title>列表</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath }/mainpage.do">物业收费管理系统</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="${pageContext.request.contextPath }/user/listUser.do">业主信息管理</a></li>
            </ul>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
            <li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
        </ul>
    </div>
</nav>

<form action="${pageContext.request.contextPath }/user/searchUser.do" method="post">


    <div class="container">

        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">业主列表</h3>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered table-hover table-condensed">
                    <thead>
                    <tr>
                        <th>门牌号</th>
                        <th>业主姓名</th>
                        <th>身份证</th>
                        <th>入住时间</th>
                        <th>联系方式</th>
                        <th>备注</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${userList }" var="item">
                        <tr>
                            <td>${item.num }</td>
                            <td>${item.username}</td>
                            <td>${item.idcard }</td>
                            <td><fmt:formatDate value="${item.regtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                            <td>${item.cellphone }</td>
                            <td>${item.remark }</td>
                            <td><a href="${pageContext.request.contextPath }/user/viewUser/${item.id}">详情</a></td>
                            <td><a href="${pageContext.request.contextPath }/user/editUser.do?id=${item.id}">修改</a></td>
                            <td><a href="${pageContext.request.contextPath }/user/deleteUser.do?id=${item.id}">删除</a></td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</form>
</body>
</html>
