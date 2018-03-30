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

</head>
<body>
<div class="container-fluid">
    <form id="search" action="${pageContext.request.contextPath }/user/searchUser.do" method="post" class="form-inline m-t" role="form">

        <div class="form-group">
            <div class="col-md-6">
                <input type="text" class="form-control" name="username" placeholder="Search for name">
            </div>
            <div class="col-md-2">
                <button type="submit" class="btn btn-default">Search</button>
            </div>

            <div class="col-md-4" id="Span"></div>
        </div>
    </form>
</div>
</body>
</html>
