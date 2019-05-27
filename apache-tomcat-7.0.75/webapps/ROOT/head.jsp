<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>头文件</title>
</head>
<body>
<%
	if(Calendar.getInstance().get(Calendar.AM_PM) == Calendar.AM){
%>
<p>上午好！欢迎您！</p>
<%
	} else {
%>
<p>下午好！欢迎您！</p>
<%
	} 
%>
</body>
</html>