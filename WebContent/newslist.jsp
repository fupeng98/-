<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr=(String)request.getAttribute("pagestr");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>蒲公英分享网</title>
		<link rel="stylesheet" type="text/css" href="css/comm.css"/>
		<link rel="stylesheet" type="text/css" href="css/slide.css"/>
		<style type="text/css">
			body{
				background-image: url(img/12.jpg);
				background-size: cover;
				background-attachment: fixed;
				
			}
			
			.header{
				
				width: 1200px;
				height: 40px;
				line-height: 35px;
				border-top: solid 3px gray;
				margin: 10px auto;
			
			}
			
			.header ul{
				list-style: none;
				margin: 0 auto;
				width: 1200px;
			}
			
			.header ul li{
				line-height: 35px;
				float: left;
				padding: 0 15px;
			}
			
			.header ul li:hover {
				background-color: #eee;
			}
			.header ul li a{
				text-decoration: none;
				color: coral;
				font-size: 17px;
			}		
			.main{
				width: 1200px;
				margin: 0 auto;
				overflow: hidden;
			}	
			.pptwrapper{
				padding-top: 5px;
				min-height: 250px;
			}
			
			.newsitem{
				width:388px;
				height:252px;
				float: left;
				border: solid 1px #eee;
				margin-top: 10px;
				margin-right: 10px;
			}
			.itemright{
				margin-right:0;
				width: 398px;
			}
			.newsitem .title{
				height: 35px;
				line-height: 35px;
				padding-left: 10px;
				border-bottom: solid 1px #eee;
				background-color: #eee;
				color: #333;
			}
			
			.newsitem a {
				line-height:30px;
				border-bottom:dashed 1px #eee;
				display: block;
				padding-left: 10px;
				color: #333;
			}
			
			.footer{
				clear: both;
				height:250px;
				width: 1200px;
				margin: 0 auto;
				margin-top: 10px;
				padding-top: 50px;
				background-repeat: no-repeat;
				background-position: 50px 30px;
				opacity: 0.5;
				
			}
			
			.footer p{
				padding-top: 50px;
				color: #333;
				line-height: 35px;
				font-size: 14px;
				text-align: center;
			}
			
			.path{
				line-height: 35px;
				border-bottom: solid 1px orchid;
				margin-bottom: 20px;
				margin-top: 10px;
			}
			
			
			
			.menu{
				float: left;
				width: 180px;
				border: solid px #eee;
				margin-right: 20px;
				border-bottom: 0;
				background-color: papayawhip;
				border-radius: 10px;
			}
			.leftclass{
				display: none;
				
			}
			.leftclass a:hover {
				background-color: #eee;
				color: darksalmon;
			}
			.p{
				line-height: 40px;
				border-bottom: solid 1px #eee;
				padding-left: 10px;
				background-color: #FFC0CB;
				border-radius: 10px;
				color: darkslategrey;
			}
			.leftclass a{
				display: block;
				line-height: 35px;
				border-bottom: solid 2px whitesmoke;
				padding-left: 10px;
			}
			.rightlist{
				margin-left: 40px;
				width: 936px;
				float: left;
				border: solid 1px #eee;
				padding: 10px;
				background-color: seashell;
				border-radius: 10px;
			}
			
			.rightlist li{
				position: relative;
				line-height: 35px;
				border-bottom: dashed 1px #eee;
			}
			
			.rightlist li span{
				position: absolute;
				right: 0;
				top: 0;
			}
			
			.tubiao{
				padding-right: 30px;
				padding-left: 20px;
			}
			
			
			
		</style>
	</head>
	<body>
	<div class="header">
		<ul>
			<li><a href="index">首页</a></li>
			<li><a href="uinewslist?typeid=1">书籍</a></li>
			<li><a href="uinewslist?typeid=2">影视</a></li>
			<li><a href="uinewslist?typeid=3">音乐</a></li>
			<li><a href="uinewslist?typeid=4">美食</a></li>
			<li><a href="uinewslist?typeid=5">娱乐</a></li>
			<li><a href="uinewslist?typeid=6">旅游</a></li>
			<li><a href="guestbookadd.jsp">在线留言</a></li>
			<li><a href="ours.jsp">关于我们</a></li>
		</ul>
	</div>
	<div class="main">
		<div class="pptwrapper">
			<div class="pptbox" id="ppt01">
				<ul class="innerwrapper">
					<li><a href="#"><img src="img/haochide.png"/></a></li>
					<li><a href="#"><img src="img/xuejing.png"/></a></li>
					<li><a href="#"><img src="img/31.png"/></a></li>
				</ul>
				<ul class="controls">
					<li class="current">1</li>
					<li>2</li>
					<li>3</li>
				</ul>			
				<span class="btnleft"></span>
				<span class="btnright"></span>
			</div>					
		</div>
		<div class="path">
			当前位置 / 文章列表
		</div>
		
		<div class="listwrapper">
			<div class="menu">
			<p class="p"><span class="tubiao"><img src="img/wp.png"/></span>干货</p>
				<div class="leftclass">
					<a href="uinewslist?typeid=1"><span class="tubiao"><img src="img/shu.png"/></span>书籍</a>
					<a href="uinewslist?typeid=2"><span class="tubiao"><img src="img/ys.png"/></span>影视</a>
					<a href="uinewslist?typeid=3"><span class="tubiao"><img src="img/yy.png"/></span>音乐</a>
					<a href="uinewslist?typeid=4"><span class="tubiao"><img src="img/ms.png"/></span>美食</a>
					<a href="uinewslist?typeid=5"><span class="tubiao"><img src="img/yl.png"/></span>娱乐</a>
					<a href="uinewslist?typeid=6"><span class="tubiao"><img src="img/ly.png"/></span>旅游</a>
				</div>
			</div>
				
			<ul class="rightlist">
					<%for (Map<String, Object> m : list) { %>
						<li><a href="newsview?id=<%=m.get("id") %>"><%=m.get("title") %></a><span><%=m.get("createtime") %></span></li>
					<%}%>
				
				
			</ul>
			<div style="clear: both; text-align:right;padding-top:20px;"><%=pagestr%></div>
			
		</div>
			
	</div>
	<div class="footer">
		
<p>©ALIMAMA MUX, powered by alimama THX.法律声明</p>
<p>转载内容版权归作者及来源网站所有，本站原创内容转载请注明来源，商业媒体及纸媒请先联系：sangxing@taobao.com</p>
	</div>
		
		<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/tyslide.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$("#ppt01").tyslide({
			boxh:250,//盒子的高度
			w:1200,//盒子的宽度
			h:250,//图片的高度
			isShow:true,//是否显示控制器
			isShowBtn:true,//是否显示左右按钮
			controltop:5,//控制按钮上下偏移的位置,要将按钮向下移动   首先保证boxh 高度>图片 h
			controlsW:60,//控制按钮宽度
			controlsH:10,//控制按钮高度
			radius:0,//控制按钮圆角度数
			controlsColor:"#eee",//普通控制按钮的颜色
			controlsCurrentColor:"#ccc"//当前控制按钮的颜色
		});
		
			$(".menu").mouseenter(function(){
				$(this).find(".leftclass").stop(true,true).slideDown();
			});
			
			$(".menu").mouseleave(function(){
				$(this).find(".leftclass").stop(true,true).slideUp();
			});
		</script>
	</body>
</html>
