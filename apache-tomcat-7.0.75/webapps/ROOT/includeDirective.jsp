<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>包含指令的用法</title>
</head>
<body>
<h3>包含的头文件信息(head.jsp)</h3>
<%@include file="head.jsp"%>
<h3>页面正文信息</h3>
<img alt="qst" src="images/qst.jpg" align="left">
青软实训创建于2006年，
是专注于软件、集成电路、物联网、移动互联网、服务外包等领域的专业化大学生实训、培训机构，
是专业化的优秀IT人力资源服务提供商。
<br/>
<h3>包含的尾部文件信息(tail.html)</h3>
<%@include file="tail.html"%>
</body>
</html>