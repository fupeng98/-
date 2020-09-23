<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
  	Map<String, Object> objbyid = (Map<String, Object>)request.getAttribute("objbyid");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="newsdelete" method="post">
<input type="hidden" name="id" value="<%=objbyid.get("id")%>"/>
标题<input type="text" name="title" value="<%=objbyid.get("title")%>"/>
作者<input type="text" name="author" value="<%=objbyid.get("author")%>"/>
来源<input type="text" name="source" value="<%=objbyid.get("source")%>"/>
时间<input type="text" name="createtime"/>
内容<textarea name="contents"></textarea>
<input type="submit" value="保存"/>
</body>
</html>