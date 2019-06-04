<%--
  Created by IntelliJ IDEA.
  User: lwy
  Date: 19-5-29
  Time: 下午9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!--标签页的图标，这里是那个图标网站里面选的-->
    <link rel="icon" href="https://www.easyicon.net/api/resizeApi.php?id=1219813&size=128">
    <link href="navbar.css" rel="stylesheet">
    <!--标题-->
    <title>oj|Home</title>

    <style>
        body{
            padding-top: 100px;
            background-color: whitesmoke;
        }
    </style>

    <script>
        // 判断是登录账号和密码是否为空
        function check(){
            var username = $("#username").val();
            var password = $("#password").val();
            if(username=="" || password==""){
                $("#message").text("账号或密码不能为空！");
                return false;
            }
            return true;
        }
    </script>


    <%--<script>--%>
    <%--// 判断是登录账号和密码是否为空--%>
    <%--function register(){--%>
    <%--var register_usercode = $("#register_usercode").val();--%>
    <%--var register_password = $("#register_password").val();--%>

    <%--$.ajax({--%>
    <%--type : "POST",--%>
    <%--url : "${pageContext.request.contextPath }/register.action",--%>
    <%--data :{usercode:register_usercode, password:register_password},--%>
    <%--contentType :'application/x-www-form-urlencoded',--%>
    <%--success: function (data) {--%>
    <%--if ("OK" == data) {--%>
    <%--alert(data);--%>
    <%--} else {--%>
    <%--alert("注册失败！");--%>
    <%--}--%>
    <%--},--%>
    <%--error:function (error) {--%>
    <%--alert("请求无效！");--%>
    <%--}--%>
    <%--});--%>
    <%--}--%>
    <%--</script>--%>
</head>
<body>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
    <!--当屏幕很小时，导航栏会合在一个里面-->
    <a class="navbar-brand"><font size="5" color="#f0ffff">  Online Judge  </font></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav mr-auto">
            <li class="nav-item"><a class="nav-link active show" href="#home" data-toggle="tab" role="tab" aria-selected="true"><span><img src="${pageContext.request.contextPath }/images/home.ico"></span> Home</a></li>
            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/problem/showproblem.action"><span><img src="${pageContext.request.contextPath }/images/question.ico"></span> Problems</a></li>
            <li class="nav-item"><a class="nav-link" href="#contact" data-toggle="tab" role="tab"><span><img src="${pageContext.request.contextPath }/images/contact.ico"></span> Contact</a></li>
            <li class="nav-item"><a class="nav-link" href="#status" data-toggle="tab" role="tab"><span><img src="${pageContext.request.contextPath }/images/flag.ico"></span> Status</a></li>

            <li class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="${pageContext.request.contextPath }/images/bar.ico"> Rank</a>
                <ul class="dropdown-menu">
                    <a class="dropdown-item" href="#rank" data-toggle="tab">ACM Rank</a>
                    <a class="dropdown-item" href="#rank" data-toggle="tab">OI Rank</a>
                </ul>
            </li>

            <li class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                   aria-expanded="false"><img src="${pageContext.request.contextPath }/images/mark.ico"> About</a>
                <ul class="dropdown-menu">
                    <a class="dropdown-item" href="#about" data-toggle="tab">Judger</a>
                    <a class="dropdown-item" href="#about" data-toggle="tab">FAQ</a>
                </ul>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="${pageContext.request.contextPath }/images/user.ico"> ${USER_SESSION.username}</a>
                <ul class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-toggle="tab">Home</a>
                    <a class="dropdown-item" href="#" data-toggle="tab">Submissions</a>
                    <a class="dropdown-item" href="#" data-toggle="tab">Settings</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath }/toMan.action">Management</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="${pageContext.request.contextPath }/logout.action">Logout</a>
                </ul>
            </li>
        </ul>
    </div>
</nav>


<!--标签-->
<div id="myTabContent" class="tab-content">
    <div class="tab-pane fade in active show" id="home">
        <div class="card mx-auto" style="max-width: 90%;max-height: 120px">
            <div class="card-body border border-light rounded">
                <h5 class="card-title"><font size="5px">  Announcements</font>
                    <button type="button" class="btn btn-primary float-right">Refresh</button>
                </h5>
                <p class="card-text"><center>No Announcements</center></p>
            </div>

            <nav aria-label="Page navigation example">
                <ul class="pagination float-right">
                    <li class="page-item disabled">
                        <a class="page-link border border-light rounded" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <li class="page-item active"><a class="page-link border border-light rounded" href="#">1</a></li>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <li class="page-item disabled">
                        <a class="page-link border border-light rounded" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </ul>
            </nav>

        </div>
    </div>
    <div class="tab-pane fade" id="problem">
        <h1>题目</h1>
    </div>
    <div class="tab-pane fade" id="contact">
        <h1>竞赛</h1>
    </div>
    <div class="tab-pane fade" id="status">
        <h1>状态</h1>
    </div>
    <div class="tab-pane fade" id="rank">
        <h1>Rank</h1>
    </div>
    <div class="tab-pane fade" id="about">
        <h1>关于</h1>
    </div>
</div>

<footer class="fixed-bottom">
    <p><center>© 2019 Company, Inc. Version:0.0.1</center></p>
</footer>

<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
