<%--
  Created by IntelliJ IDEA.
  User: lwy
  Date: 19-5-28
  Time: 下午8:20
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
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!--标签页的图标，这里是那个图标网站里面选的-->
    <link rel="icon" href="https://www.easyicon.net/api/resizeApi.php?id=1219813&size=128">

    <!--标题-->
    <link href="${pageContext.request.contextPath }/css/style2.css" rel="stylesheet">
    <title>oj|Home</title>

</head>
<body>

<div class="wrapper">
    <nav id="sidebar">
        <div class="sidebar-header">
            <img src="${pageContext.request.contextPath }/images/sun.ico">
        </div>

        <ul class="list-unstyled components">

            <li class="active">
                <a href="#"><img src="${pageContext.request.contextPath }/images/dash.ico">  Dashboard</a>
            </li>

            <li>
                <a href="#general" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><img src="${pageContext.request.contextPath }/images/general.ico">  General</a>
                <ul class="collapse list-unstyled" id="general">
                    <li>
                        <a href="#">User</a>
                    </li>
                    <li>
                        <a href="#">Announcement</a>
                    </li>
                    <li>
                        <a href="#">System Config</a>
                    </li>
                    <li>
                        <a href="#">Judge Server</a>
                    </li>
                    <li>
                        <a href="#">Prune Test Case</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#problem" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><img src="${pageContext.request.contextPath }/images/pro.ico">  Problem</a>
                <ul class="collapse list-unstyled" id="problem">
                    <li>
                        <a href="#">Problem List</a>
                    </li>
                    <li>
                        <a href="#">Create Problem</a>
                    </li>
                    <li>
                        <a href="#">Export Or Import Problem</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#contest" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><img src="${pageContext.request.contextPath }/images/con.ico">  Contest</a>
                <ul class="collapse list-unstyled" id="contest">
                    <li>
                        <a href="#">Contest List</a>
                    </li>
                    <li>
                        <a href="#">Create Contest</a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>

    <div class="content">
        <nav class="navbar navbar-expand-sm navbar-light bg-light">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="nav navbar-nav mr-auto">
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="${pageContext.request.contextPath }/images/user.ico">  ${USER_SESSION.username}</a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="${pageContext.request.contextPath }/logout.action">Logout</a>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>




    </div>

</div>
<footer class="fixed-bottom">
    <p><center>© 2019 Company, Inc. Version:0.0.1</center></p>
</footer>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<script>
    $(document).ready(function () {
        $('#sidebarCollapse').on('click',function () {
            $('#sidebar').toggleClass('active');
        });
    });
</script>
</body>
</html>
