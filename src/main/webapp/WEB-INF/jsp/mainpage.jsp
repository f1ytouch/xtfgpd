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
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        人事管理 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath }/findListEmployee.do">员工信息管理</a></li>
                        <li><a href="${pageContext.request.contextPath }/adminList.do">系统用户信息管理</a></li>
                    </ul>
                </li>

            </ul>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> 在线</a></li>
            <li><a href="${pageContext.request.contextPath }/logout.do"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
        </ul>
    </div>
</nav>

<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="${pageContext.request.contextPath }/bootstrap/img/backgram1.jpg" style="width: 100%;" alt="First slide">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath }/bootstrap/img/backgram2.jpg" style="width: 100%;" alt="Second slide">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath }/bootstrap/img/backgram3.jpg" style="width: 100%;" alt="Third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

</body>
</html>
