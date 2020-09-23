<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
     Map<String, Object> objbyid = (Map<String, Object>)request.getAttribute("objbyid");   
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
				background-image: url(img/gywm.gif);
				background-size: cover;
				background-attachment: fixed;
				
			}
			
			.header{
				
				width: 1200px;
				height: 40px;
				line-height: 35px;
				border-top: solid 3px saddlebrown;
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
				color: saddlebrown;
				font-size: 17px;
			}		
			.main{
				width: 1200px;
				margin: 0 auto;
				overflow: hidden;
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
				border-bottom: solid 1px saddlebrown;
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
			
			.rightlist{
				width: 936px;
				float: left;
				border: solid 1px #eee;
				padding: 10px;
				opacity: 0.9;
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
			
			
			.content{
				padding: 10px;
				line-height: 28px;
				
			}
			
			.content p{
				text-indent: 2em;
				
			}
			
			.source{
				line-height: 24px;
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
	
		<div class="path">
			当前位置 / 关于我们
		</div>
		
		<div class="listwrapper">
			<div class="menu">
			<p class="p"><span class="tubiao"><img src="img/wp.png"/></span>干货</p>
				<div class="leftclass">
					<a href="###"><span class="tubiao"><img src="img/shu.png"/></span>书籍</a>
					<a href="###"><span class="tubiao"><img src="img/ys.png"/></span>影视</a>
					<a href="###"><span class="tubiao"><img src="img/yy.png"/></span>音乐</a>
					<a href="###"><span class="tubiao"><img src="img/ms.png"/></span>美食</a>
					<a href="###"><span class="tubiao"><img src="img/yl.png"/></span>娱乐</a>
					<a href="###"><span class="tubiao"><img src="img/ly.png"/></span>旅游</a>
				</div>
			</div>
				
			<div class="rightlist">
				<h3 align="center">蒲公英分享网</h3>
				
				<p align="center" class="source">	作者:王磊  来源:惠软一班3组  时间：2018-09-19</p>
				<div class="content">
					<p>
						你是否有过灵光一闪的时刻，那些奇思妙想的点子就像一颗颗蒲公英种子一样，随风而来，随风而去，不留下一丝痕迹。
					</p>
					<p>
						他们就想风一样难以捕捉。
					</p>
					<p>
						但是从今天开始，您可以在蒲公英网，记录下您的发现、想法、生活、一切有意思的东西，散播您自己的种子。
					</p>
					<p>
						美食，书籍，一次难忘的旅行，扣人心弦的音乐，这些奇妙的种子，不仅在您心中留下了美好的印象，也会在其它人的心中生根发芽。
					</p>
					<p>
						但愿您，也能为这片蒲公英花田，贡献您独一无二的种子。
					</p>
					<p>
						蒲公英分享网，期待您的加入。
					</p>
					<p>
						投稿途径-294715243@QQ.com。
				    </p>
				    <p>
				    	联系人，李主管。
				    </p>
					
				</div>
			</div>
			<div style="clear: both;"></div>
		</div>
			<div style="clear: both;"></div>
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
