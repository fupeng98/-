<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
		
	</head>
	<body>
		<form action="newsadd" method="post">
			<p class="path">蒲公英分享系统/分享中心/分享信息管理</p>
			<table border="0" cellspacing="0" cellpadding="0" class="tb">
				<tr>
					<td class="lable">类别</td><td>
					    <select name="typename">
					    	<option value="1">书籍</option>
					    	<option value="2">影视</option>
					    	<option value="3">音乐</option>
					    	<option value="4">美食</option>
					    	<option value="5">娱乐</option>
					    	<option value="6">旅游</option>
					    	
					    </select>
				    </td>
				</tr>
				<tr><td class="lable">标题</td><td><input type="text" name="title"/></td></tr>
				<tr><td class="lable">作者</td><td><input type="text" name="author"/></td></tr>
				<tr><td class="lable">来源</td><td><input type="text" name="source"/></td></tr>
				<tr><td class="lable">时间</td><td><input type="text" name="createtime"/></td></tr>
				<tr><td class="lable">内容</td><td><textarea name="contents"></textarea></td></tr>
				
				<tr><td class="lable">&nbsp;</td><td><input type="submit" name="btnsave" value="保存" id="btnsave"/></td></tr>
			</table>
			
		</form>
		
	</body>
</html>