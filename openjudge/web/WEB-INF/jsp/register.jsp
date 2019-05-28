<%--
  Created by IntelliJ IDEA.
  User: xiaxia
  Date: 2019/4/20
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>注册页面</title>
    <meta http-equiv=Content-Type content="text/html; charset=utf-8">
    <link href="${pageContext.request.contextPath}/css/style.css"
          type=text/css rel=stylesheet>
    <link href="${pageContext.request.contextPath}/css/boot-crm.css"
          type=text/css rel=stylesheet>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js">
    </script>
    <meta content="MSHTML 6.00.2600.0" name=GENERATOR>
</head>
<body>
    账&nbsp;号：<input id="usercode" type="text" name="usercode" />
    <br /><br />
    密&nbsp;码：<input id="password" type="password" name="password" />
    <br /><br />
    确认密码：<input  id="twoPassword" type="password" name="twoPassword">
    <br /><br />
    <button  onclick="register()">注册</button>
</body>
<script>
    // 判断是登录账号和密码是否为空
    function register(){
        var usercode = $("#usercode").val();
        var password = $("#password").val();

        $.ajax({
            type : "POST",
            url : "${pageContext.request.contextPath }/register.action",
            data :{usercode:usercode, password:password},
            contentType :'application/x-www-form-urlencoded',
            success: function (data) {
                if ("OK" == data) {
                    alert("注册成功！");
                    return ;
                } else {
                    alert("注册失败！");
                    return ;
                }
            },
            error:function (error) {
                alert("请求无效！");
            }
        });
    }
</script>
</html>