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

    <style>
        body{
            background: whitesmoke;
        }
    </style>

</head>
<body>

<div class="wrapper">
<%--    侧边导航栏--%>
    <nav id="sidebar">
        <ul class="list-unstyled components sticky-top">
            <div class="sidebar-header" style="padding-bottom: 20px">
                <img src="${pageContext.request.contextPath }/images/sun.ico">
            </div>

            <li>
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
                <a href="#problem" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"><img src="${pageContext.request.contextPath }/images/pro.ico">  Problem</a>
                <ul class="collapse list-unstyled show" id="problem">
                    <li>
                        <a href="#">Problem List</a>
                    </li>
                    <li class="active">
                        <!--后期可以删除链接-->
                        <a href="${pageContext.request.contextPath }/createproblem.action">Create Problem</a>
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

<%--    顶部导航栏--%>
    <div class="content">
        <nav class="navbar navbar-expand-sm navbar-light bg-light sticky-top">

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

        <p></p><p></p>

<%--        创建问题--%>
        <div class="card mx-auto" style="max-width: 98%">
            <div class="card-header">
                <h5 class="card-title"><font size="5px">  Add Problem</font></h5>
            </div>

            <form class="needs-validation" novalidate action="${pageContext.request.contextPath }/problem/newproblem.action" method="post">
                <div class="form-row">
                    <div class="form-group col-md-4" style="padding: 10px">
                        <label for="id">*ID</label>
                        <input type="text" class="form-control" id="id" name="id" placeholder="ID" required>
                        <div class="invalid-feedback">
                            请输入ID！
                        </div>
                    </div>
                    <div class="form-group col-md-8" style="padding: 10px">
                        <label for="title">*Title</label>
                        <input type="text" class="form-control" id="title" name="title" placeholder="Title" required>
                        <div class="invalid-feedback">
                            请输入标题！
                        </div>
                    </div>
                </div>
                <div class="form-group" style="padding: 10px">
                    <label for="desc">*Description</label>
                    <textarea class="form-control" id="desc" name="desc" rows="10" required></textarea>
                    <div class="invalid-feedback">
                        请输入描述！
                    </div>
                </div>
                <div class="form-group" style="padding: 10px">
                    <label for="indesc">*Input Description</label>
                    <textarea class="form-control" id="indesc" name="indesc" rows="10" required></textarea>
                    <div class="invalid-feedback">
                        请输入输入描述！
                    </div>
                </div>
                <div class="form-group" style="padding: 10px">
                    <label for="outdesc">*Out Description</label>
                    <textarea class="form-control" id="outdesc" name="outdesc" rows="10" required></textarea>
                    <div class="invalid-feedback">
                        请输入输出描述！
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-5" style="padding: 10px">
                        <label for="time_limit">*Time Limit(ms)</label>
                        <input type="text" class="form-control" id="time_limit" name="time_limit" value="1000" required>
                        <div class="invalid-feedback">
                            请输入时间限制！
                        </div>
                    </div>
                    <div class="form-group col-md-5" style="padding: 10px">
                        <label for="memory_limit">*Memory Limit(MB)</label>
                        <input type="text" class="form-control" id="memory_limit" name="memory_limit" value="256" required>
                        <div class="invalid-feedback">
                            请输入空间限制！
                        </div>
                    </div>
                    <div class="form-group col-md-2" style="padding: 10px">
                        <label for="difficulty">Difficulty</label>
                        <select class="form-control" id="difficulty" name="difficulty">
                            <option class="active">low</option>
                            <option>mid</option>
                            <option>high</option>
                        </select>
                        <div class="invalid-feedback">
                            请选择难度！
                        </div>
                    </div>
                </div>

<%--                两个开关 vis和ss--%>
                <div class="form-row">
                    <div class="form-group col-md-4" style="padding: 20px">
                        Visible
                        <p></p>
                        <div class="material-switch">
                            <input id="vis" name="vis" type="checkbox" value="1" checked>
                            <label for="vis"></label>
                        </div>
                    </div>

                    <div class="form-group col-md-4" style="padding: 20px">
                        Share Submission
                        <p></p>
                        <div class="material-switch">
                            <input id="ss" name="ss" type="checkbox" value="1" checked>
                            <label for="ss"></label>
                        </div>
                    </div>


<%--                语言checkbox--%>
                    <div class="form-group col-md-4" style="padding: 20px" id="lan">
                        *Languages
                        <p></p>
                        <div class="custom-control custom-checkbox custom-control-inline" data-toggle="tooltip" data-placement="top" title="GCC 5.4">
                            <input type="checkbox" name="checkname" class="custom-control-input" id="c" value="C" checked>
                            <label class="custom-control-label" for="c" style="color:blue">C</label>
                        </div>
                        <div class="custom-control custom-checkbox custom-control-inline" data-toggle="tooltip" data-placement="top" title="G++ 5.4">
                            <input type="checkbox" name="checkname" class="custom-control-input" id="cpp" value="C++" checked>
                            <label class="custom-control-label" for="cpp" style="color:blue">C++</label>
                        </div>
                        <div class="custom-control custom-checkbox custom-control-inline" data-toggle="tooltip" data-placement="top" title="OpenJDK 1.8">
                            <input type="checkbox" name="checkname" class="custom-control-input" id="java" value="Java" checked>
                            <label class="custom-control-label" for="java" style="color:blue">Java</label>
                        </div>
                        <div class="custom-control custom-checkbox custom-control-inline" data-toggle="tooltip" data-placement="top" title="Python 2.7">
                            <input type="checkbox" name="checkname" class="custom-control-input" id="python2" value="Python2" checked>
                            <label class="custom-control-label" for="python2" style="color:blue">Python2</label>
                        </div>
                        <div class="custom-control custom-checkbox custom-control-inline" data-toggle="tooltip" data-placement="top" title="Python 3.5">
                            <input type="checkbox" name="checkname" class="custom-control-input" id="python3" value="Python3" checked>
                            <label class="custom-control-label" for="python3" style="color:blue">Python3</label>
                        </div>
                    </div>
                </div>


<%--                提示hint--%>
                <div class="form-group" style="padding: 10px">
                    <label for="hint">Hint</label>
                    <textarea class="form-control" id="hint" name="hint" rows="10" required></textarea>
                    <div class="invalid-feedback">
                        请输入提示！
                    </div>
                </div>


<%--                输入和输出样例--%>
                <div class="card mx-auto" style="max-width: 98%" id="samp">
                    <div class="card-header">
                        <h6 class="card-title">Sample1</h6>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6" style="padding: 20px">
                            <label for="is">*Input Samples</label>
                            <textarea class="form-control" id="is" name="is" rows="5" required></textarea>
                            <div class="invalid-feedback">
                                请输入输入样例！
                            </div>
                        </div>
                        <div class="form-group col-md-6" style="padding: 20px">
                            <label for="os">*Output Samples</label>
                            <textarea class="form-control" id="os" name="is" rows="5" required></textarea>
                            <div class="invalid-feedback">
                                请输入输出样例！
                            </div>
                        </div>
                    </div>
                </div>

<%--                ACM和OI的选择--%>
                <div class="form-row">
                    <div class="form-group col-md-4" style="padding: 20px">
                        Type
                        <p></p>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="acm" name="typee" class="custom-control-input" value="ACM" checked>
                            <label class="custom-control-label" for="acm">ACM</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="oi" name="typee" class="custom-control-input" value="OI">
                            <label class="custom-control-label" for="oi">OI</label>
                        </div>
                    </div>

<%--                    上传文件--%>
                    <div class="form-group col-md-3" style="padding: 20px">
                        TestCase
                        <p></p>
                        <span class="btn btn-info fileinput-button">
                            <span>Choose File</span>
                            <input type="file" name="cfile">
                        </span>
                    </div>


<%--                    IO MODE选择--%>
                    <div class="form-group col-md-4" style="padding: 20px" id="iomode">
                        IO Mode
                        <p></p>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="standardio" name="iomode" class="custom-control-input" value="Standard IO" checked>
                            <label class="custom-control-label" for="standardio">Standard IO</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="fileio" name="iomode" class="custom-control-input" value="File IO">
                            <label class="custom-control-label" for="fileio">File IO</label>
                        </div>
                    </div>
                </div>



<%--                SOURCE--%>
                <div class="form-group" style="padding: 10px">
                    <label for="source" style="padding: 10px">Source</label>
                    <input type="text" class="form-control" id="source" name="source" placeholder="Source" required>
                    <div class="invalid-feedback">
                        请输入资源！
                    </div>
                </div>


                <div style="padding: 10px">
                    <button class="btn btn-primary" type="submit">Save</button>
                </div>


                <div class="card-footer text-muted">
                    <p><center>© 2019 Company, Inc. Version:0.0.1</center></p>
                </div>

            </form>

        </div>


    </div>

</div>

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

<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })
</script>

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