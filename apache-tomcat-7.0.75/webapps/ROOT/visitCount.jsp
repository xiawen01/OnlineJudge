<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>访问统计</title>
</head>
<body>
	<%!int count = 0; //被用户共享的count

	synchronized void setCount() {
		count++;
	}%>
	<%
		String date = new Date().toLocaleString();
	%>
	<%
		setCount();
		out.print("您是第" + count + "个访问本网站的用户。");
		out.print("访问时间是：" + date);
	%>
</body>
</html>