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
	<script src="/bootstrap/js/jquery.validate.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>

	<script>
        jQuery.validator.addMethod("isMobile", function(value, element) {
            var length = value.length;
            var regPhone = /^1([3578]\d|4[57])\d{8}$/;
            return this.optional(element) || ( length == 11 && regPhone.test( value ) );
        }, "请正确填写您的手机号码");

        jQuery.validator.addMethod("isChar", function(value, element) {
            var length = value.length;
            var regName = /[^\u4e00-\u9fa5]/g;
            return this.optional(element) || !regName.test( value );
        }, "请正确格式的姓名(暂支持汉字)");

        jQuery.validator.addMethod("isIdCard",
            function (value, element) {
                return this.optional(element) || (isIdCard(value));
            },
            "身份证号非法！");
        jQuery.validator.addMethod("isRightfulString", function(value, element) {
            return this.optional(element) || /^[A-Za-z0-9_-]+$/.test(value);
        }, "有非法法字符(a-zA-Z0-9-_)");

        // 身份证号验证
        function isIdCard(cardid) {
            //身份证正则表达式(18位)
            var isIdCard2 = /^[1-9]\d{5}(19\d{2}|[2-9]\d{3})((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])(\d{4}|\d{3}X)$/i;
            var stard = "10X98765432"; //最后一位身份证的号码
            var first = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2]; //1-17系数
            var sum = 0;
            if (!isIdCard2.test(cardid)) {
                return false;
            }
            var year = cardid.substr(6, 4);
            var month = cardid.substr(10, 2);
            var day = cardid.substr(12, 2);
            var birthday = cardid.substr(6, 8);
            if (birthday != dateToString(new Date(year + '/' + month + '/' + day))) { //校验日期是否合法
                return false;
            }
            for (var i = 0; i < cardid.length - 1; i++) {
                sum += cardid[i] * first[i];
            }
            var result = sum % 11;
            var last = stard[result]; //计算出来的最后一位身份证号码
            if (cardid[cardid.length - 1].toUpperCase() == last) {
                return true;
            } else {
                return false;
            }
        }

        $(function() {
            $("#userForm").validate({

                rules: {
                    num: {isRightfulString: true,
                        required: true
                    },
                    username: {
                        isChar: true,
                        required: true
                    },
                    sex: "required",
                    idcard: {
                        isIdCard: true,
                        required: true
                    },
                    cellphone: {
                        isMobile: true,
                        required: true
                    },
                    regtime: {
                        dateISO: true,
                        required: true
                    }

                },
                messages: {
                    num: {
                        isRightfulString: "包含非法字符",
                        required: "必须填写"
                    },
                    username: {
                        isChar: "请正确格式的姓名(暂支持汉字)",
                        required: "必须填写"
                    },
                    idcard: {
                        isIdCard: "身份证号非法！",
                        required: "必须填写"
                    },
                    cellphone: {
                        isMobile: "请正确填写您的手机号码",
                        required: "必须填写"
                    },
                    regtime: {
                        dateISO: "时间格式不正确",
                        required: "必须填写"
                    }
                }
            });
        });


	</script>
<title>添加业主</title>

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

<form id="userForm" class="form-horizontal" action="${pageContext.request.contextPath }/user/insertUser.do" method="post" >

	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">添加业主</h3>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<label  class="col-sm-2 control-label">房产编号</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="num" value="${item.num }" placeholder="房产编号">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">业主姓名</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="username" value="${item.username }" placeholder="业主姓名">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">性别</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="sex" value="${item.sex }" placeholder="性别">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">身份证</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="idcard" value="${item.idcard }" placeholder="身份证">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">入住时间</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="regtime" value="${item.regtime }" placeholder="入住时间">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">联系方式</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="cellphone" value="${item.cellphone }" placeholder="联系方式">
					</div>
					<span class="col-sm-4"></span>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">备注</label>
					<div class="col-sm-6">
						<textarea name="remark" class="form-control" rows="2">${item.remark}</textarea>
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