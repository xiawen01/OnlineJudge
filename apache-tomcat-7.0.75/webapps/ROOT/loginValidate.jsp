<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录验证</title>
</head>
<body>
<%
//设置POST请求编码
request.setCharacterEncoding("UTF-8");
//获取请求参数
String username = request.getParameter("username");
String password = request.getParameter("password");
StringBuffer errorMsg = new StringBuffer();
//参数信息验证
if("".equals(username))
	errorMsg.append("用户名不能为空！<br>");
if("".equals(password))
	errorMsg.append("密码不能为空！<br>");
else
	if(password.length() < 6 || password.length() > 12)
		errorMsg.append("密码长度需在6-12位之间。<br>");
//将错误信息保存在请求域属性errorMsg中
request.setAttribute("errorMsg", errorMsg.toString());

if(errorMsg.toString().equals("")){
	//out.println(username + ",您的登录信息验证成功！");
	//将用户名存储在session域属性username中
	session.setAttribute("username", username);
	//验证成功，重定向到main.jsp
	response.sendRedirect("main.jsp");
}else{
%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
} 
%>
</body>
</html>