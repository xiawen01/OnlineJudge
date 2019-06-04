<%--
  Created by IntelliJ IDEA.
  User: xiaxia
  Date: 19-6-2
  Time: 下午11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%
    String difficulty = "";
    if(request.getParameter("difficulty")!=null)
        difficulty = request.getParameter("difficulty");
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

<%--显示题目列表--%>
<div class="card mx-auto" style="max-width: 90%">
    <div class="card-body border border-light rounded">
        <div id="page-wrapper">
            <form class="form-inline" method="get" name = "form1"
                  action="${pageContext.request.contextPath }/problem/showproblem.action">
                <h1 class="page-header">Problem List </h1>
                <div class="dropdown" >
                    <select	class="form-control" id="difficulty"  name="difficulty">
                        <option value="" disabled selected hidden><s:if test="optionValue==difficulty">selected="selected"</s:if>Difficulty</option>
                        <option value="all"><s:if test="optionValue==all">selected="selected"</s:if>All</option>
                        <option value="low"><s:if test="optionValue==low">selected="selected"</s:if>Low</option>
                        <option value="middle"><s:if test="optionValue==middle">selected="selected"</s:if>Middle</option>
                        <option value="high"><s:if test="optionValue==high">selected="selected"</s:if>High</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="title">keyword</label>
                    <input type="text" class="form-control" id="title"
                           value="${title}" name="title" />
                </div>

                <button type="submit" class="btn btn-primary">search</button>
            </form>
        </div>
        <p class="card-text">
        <table class="table table-striped" style="padding-top: 20px" id = "dataTable">
            <thead>
            <tr>
                <th>#</th>
                <th>Title</th>
                <th>Level</th>
                <th>Total</th>
                <th>ACRate</th>
            </tr>
            </thead>

            <c:forEach items="${problem}" var="problem">
                <tr>
                    <td>${problem.id}</td>
                    <td>${problem.title}</td>
                    <td>${problem.difficulty}</td>
                    <td>${problem.submission_number}</td>
                    <td>${1.0*problem.accepted_number/problem.submission_number}</td>
                </tr>
            </c:forEach>
        </table>
        <%--            <font size="2">共 ${page.totalPageCount} 页</font> <font size="2">第--%>
        <%--            ${page.pageNow} 页</font> <a href="${pageContext.request.contextPath }/problem/showproblem.action?pageNow=1">首页</a>--%>
        <nav aria-label="Page navigation example" >
            <ul class="pagination justify-content-end" >
                <li class="page-item">
                    <a class="page-link" href=""  id="pagepre" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href=""  id="page1">1</a></li>
                <li class="page-item"><a class="page-link" href=""  id="page2">2</a></li>
                <li class="page-item"><a class="page-link" href=""  id="page3">3</a></li>
                <li class="page-item">
                    <a class="page-link" href=""  id="pagenext" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                    </a>
                </li>
            </ul>
        </nav>

        </p>
    </div>

</div>



<footer class="fixed-bottom">
    <p><center>© 2019 Company, Inc. Version:0.0.1</center></p>
</footer>

<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script>
    var selvalue = "<%=difficulty%>";
    document.form1.difficulty.value= selvalue;
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

    $(document).ready(function(){
        $("#page1").click(function(){
            //得到input的值
            var t = $("#title").val();
            var d = $("#difficulty").val();

            //设置href的值
            $("#page1").attr("href","${pageContext.request.contextPath }/problem/showproblem.action?pageNow=1&title="+t+"&difficulty="+d);
        });
        $("#page2").click(function(){

            //得到input的值
            var t = $("#title").val();
            var d = $("#difficulty").val();

            //设置href的值
            $("#page2").attr("href","${pageContext.request.contextPath }/problem/showproblem.action?pageNow=2&title="+t+"&difficulty="+d);
        });
        $("#page3").click(function(){

            //得到input的值
            var t = $("#title").val();
            var d = $("#difficulty").val();

            //设置href的值
            $("#page3").attr("href","${pageContext.request.contextPath }/problem/showproblem.action?pageNow=3&title="+t+"&difficulty="+d);
        });
        $("#pagepre").click(function(){

            //得到input的值
            var t = $("#title").val();
            var d = $("#difficulty").val();

            //设置href的值
            $("#pagepre").attr("href","${pageContext.request.contextPath }/problem/showproblem.action?pageNow=${page.pageNow - 1}&title="+t+"&difficulty="+d);
        });
        $("#pagenext").click(function(){

            //得到input的值
            var t = $("#title").val();
            var d = $("#difficulty").val();

            //设置linkToCart的href的值
            $("#pagenext").attr("href","${pageContext.request.contextPath }/problem/showproblem.action?pageNow=${page.pageNow + 1}&title="+t+"&difficulty="+d);
        });

        //table中保留两位小数
        // $("#dataTable tr:gt(0)").each(function(index, element) {
        //     var a = $(element).children();//$(element)代表每行tr，后面的children代表tr下面的td，a即这一行所有td的集合
        //     var num = parseFloat(a.eq(4).text());// 取得index为 4的td里面的文本
        //     var newNum = num.toFixed(2);
        //     a.eq(3).text(newNum);
        // });


    });

</script>
</body>
</html>
