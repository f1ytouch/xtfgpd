<%--
  Created by IntelliJ IDEA.
  User: ixuc
  Date: 2018/2/5
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>idea</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="bootstrap/login.js"></script>
</head>
<body>
<div class="container-fluid">
    <form id="loginForm" action="login.do" method="post" class="form-horizontal">

        <legend> <label ><span class="glyphicon glyphicon-user"></span>&nbsp;用户登录</label></legend>

        <div class="form-group" id="midDiv">
            <label class="col-md-3" for="mid" >用户名：</label>
            <div class="col-md-5">
                <input class="form-control" type="text" id="mid" name="mid" placeholder="请输入登录名">
            </div>
            <div class="col-md-4" id="midSpan"></div>
        </div>

        <div class="form-group" id="passwordDiv">
            <label class="col-md-3" for="password" >用户名：</label>
            <div class="col-md-5">
                <input class="form-control" type="password" id="password" name="password" placeholder="请输入密码">
            </div>
            <div class="col-md-4" id="passwordSpan"></div>
        </div>

        <div class="form-group" id="butDiv">
            <div class="col-md-6 col-md-offset-3" >
                <button type="submit" id="subBon" class="btn bg-info">登录</button>
                <button type="reset" id="resBon" class="btn bg-danger">重置</button>
            </div>
        </div>

    </form>
</div>
</body>
</html>
