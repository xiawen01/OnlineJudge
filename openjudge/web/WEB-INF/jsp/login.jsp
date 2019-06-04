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

    <%--    <script>--%>
    <%--        // 判断是登录账号和密码是否为空--%>
    <%--        function check(){--%>
    <%--            var username = $("#username").val();--%>
    <%--            var password = $("#password").val();--%>
    <%--            if(username=="" || password==""){--%>
    <%--                $("#message").text("账号或密码不能为空！");--%>
    <%--                return false;--%>
    <%--            }--%>
    <%--            return true;--%>
    <%--        }--%>
    <%--    </script>--%>


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
            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/problem/showproblem.action" ><span> <img src="${pageContext.request.contextPath }/images/question.ico"></span> Problems</a></li>
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
            <li><a class="nav-link" href="#" data-toggle="modal" data-target="#loginModal" id="login"><img src="${pageContext.request.contextPath }/images/login.ico"> Login</a></li>
            <li><a class="nav-link" href="#" data-toggle="modal" data-target="#registerModal" id="register"><img src="${pageContext.request.contextPath }/images/register.ico"> Register</a></li>
        </ul>
    </div>
</nav>

<!--注册-->
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel">
    <div class="modal-dialog" style="width:300px" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="registerModalLabel"><strong>Welcome to OJ</strong></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form action="${pageContext.request.contextPath }/register.action" method="post" class="needs-validation" novalidate>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">@</span>
                        </div>
                        <input type="text" id="register_username" name="register_username" class="form-control" placeholder="Username" required>
                        <div class="invalid-feedback">
                            请输入用户名！
                        </div>
                    </div>
                    <p></p>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">@</span>
                        </div>
                        <input type="text" id="register_password" name="register_password" class="form-control" placeholder="Password" required>
                        <div class="invalid-feedback">
                            请输入密码！
                        </div>
                    </div>
                    <p></p>
                    <%--<div class="input-group input-group-sm">--%>
                    <%--<span class="input-group-addon" >@</span>--%>
                    <%--<input type="text" id="register_password_a" name="register_password_a" class="form-control" placeholder="Password Again" aria-describedby="sizing-addon3">--%>
                    <%--</div>--%>
                    <%--<p></p>--%>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">@</span>
                        </div>
                        <input type="text" id="register_email" name="register_email" class="form-control" placeholder="Email" required>
                        <div class="invalid-feedback">
                            请输入邮箱！
                        </div>
                    </div>
                    <p></p><p></p>
                    <p></p><p></p>
                    <div class="modal-footer">
                        <button class="btn btn-primary" type="submit">提交</button>
                        <button class="btn btn-danger" data-dismiss="modal">取消</button>
                    </div>
                    <a href="" data-toggle="modal" data-dismiss="modal" data-target="#loginModal">已有账号？点我登录</a>
                </form>
            </div>
        </div>
    </div>
</div>

<!--登录-->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel">
    <div class="modal-dialog" style="width:300px" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="loginModalLabel"><strong>Welcome to OJ</strong></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form action="${pageContext.request.contextPath }/login.action"
                      method="post" onsubmit="check()" class="needs-validation" novalidate>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">@</span>
                        </div>
                        <input type="text" id="username" name="username" class="form-control" placeholder="Username" required>
                        <div class="invalid-feedback">
                            请输入用户名！
                        </div>
                    </div>
                    <p></p>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">@</span>
                        </div>
                        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                        <div class="invalid-feedback">
                            请输入密码！
                        </div>
                    </div>
                    <%--<div>--%>
                    <%--<input type="submit" class="btn btn-primary" value="Login">--%>
                    <%--</div>--%>
                    <p></p><p></p>
                    <p></p><p></p>
                    <div class="modal-footer">
                        <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
                        <button type="submit" class="btn btn-primary">Login</button>
                    </div>
                    <a href="" data-toggle="modal" data-dismiss="modal" data-target="#registerModal">还没有账号？点我注册</a>
                </form>
            </div>
        </div>
    </div>
</div>

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

    <div class="tab-pane fade in active" id="problem">

    </div>
    <div class="tab-pane fade" id="contact">
        <h1>比赛</h1>
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

<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();

</script>
</body>
</html>