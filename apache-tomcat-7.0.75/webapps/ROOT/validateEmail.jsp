<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Email格式验证</title>
</head>
<body>
<%
String email="qst@itshixun.com";
if(email.indexOf("@")==-1){
%>
您的E-mail地址中没有@。
<%
}else if(email.indexOf(" ")!=-1){
%>
您的E-mail地址中含有非法空格。
<%
}else if(email.indexOf("@")!=email.lastIndexOf("@")){
%>
您的E-mail地址中有两个以上的@符号。
<%
}else{
%>
您的E-mail地址书写正确。
<%
}
%>
</body>
</html>