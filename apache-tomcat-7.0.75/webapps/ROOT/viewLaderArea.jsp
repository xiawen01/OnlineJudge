<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示梯形面积</title>
</head>
<body>
	<jsp:include page="countLaderArea.jsp">
		<jsp:param value="10" name="upper" />
		<jsp:param value="30" name="base" />
		<jsp:param value="20" name="height" />
	</jsp:include>
</body>
</html>
