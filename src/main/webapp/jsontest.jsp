<%--
  Created by IntelliJ IDEA.
  User: ixuc
  Date: 2018/3/25
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsontest</title>
    <script src="bootstrap/js/jquery-3.3.1.min.js"></script>
    <script>
        function requestJon() {
            $.ajax({
                url:"${pageContext.request.contextPath}/requestJson.do",
                type:"post",
                contentType:"application/json;charset=utf-8",
                data:'{"username":"桑普及","phone":"12344"}',
                success:function (data) {
                    alert(data);
                }
            });
        }
    </script>
</head>
<body>
<input type="button" value="requestJson" onclick="requestJon()">
</body>
</html>
