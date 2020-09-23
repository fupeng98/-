<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String msg =(String)request.getAttribute("msg");
	if(msg==null)
	{
		msg="";
	}
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<style type="text/css">
			* {
				margin: 0;
				padding: 0;
			}
			
			body {
				background-image: url(../img/bg1.gif);
				background-size:50% ;
			}
			
			#loginwrapper {
				width: 660px;
				height: 320px;
				background-color: greenyellow;
				background-image: url(../img/bg2.jpg);
				margin: 0 auto;
				margin-top: 220px;
				margin-right: 500px;
				border-radius: 25px;
			}
			
			.title {
				text-align: center;
				/*background-color: gold;*/
				padding-top: 20px;
				color: green;
			}
			
			.formwrapper {
				width: 400px;
				height: 150px;
				margin-left: 160px;
				display: inline-block;
				color: green;
				margin-top: 140px;
				/*background-color: gold;*/
				opacity: 0.5;
				border-radius: 5px;
			}
			
			.formwrapper p {
				line-height: 40px;
			}
			
			.formwrapper span {
				display: inline-block;
				width: 80px;
				text-align: right;
			}
			
			#btnlogin {
				padding: 0 20px;
				margin-left: 6px;
			}
			
			.dl {
				width: 100px;
				margin: 0 auto;
				
				position:relative;
				background-color:green;
			}
			#msg{
				color:red;
				position:absolute;
				right:0;
				top:0;
			}
		</style>
	</head>

	<body>
		<div id="loginwrapper">
			<h2 class="title">蒲公英分享网后台管理系统</h2>
			<form action="login" method="post">
				<div class="formwrapper">
					<p><span>用户名</span> <input type="text" name="username" id="username" value="" /></p>
					<p><span>密码</span> <input type="password" name="password" id="password" value="" /></p>
					<p class="dl"><span id="msg"></span></p>
					<p style="margin-left:80px;"><input type="submit" value="登录" id="btnlogin"></p>
				</div>

			</form>
			<script src="../js/jquery-1.11.0.js"></script>
    <script>
        $("#btnlogin").click(function (e) {
            var username = $("#username");
            if (!username.val().length > 0)
            {
                $("#msg").text("请输入用户名");
                username.focus();
                e.preventDefault();
                return false;
            }

            var password = $("#password");
            if (!password.val().length > 0) {
                $("#msg").text("请输入密码");
                password.focus();
                e.preventDefault();
                return false;
            }
        });
    </script>
			
		</div>

	</body>

</html>
    