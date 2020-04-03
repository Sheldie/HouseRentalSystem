<%--
  Created by IntelliJ IDEA.
  User: hasee-pc
  Date: 2018/6/26
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="wqs">
<head>
    <title>订单查询 - 民宿租赁系统</title>
    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content=""/>
    <script type="application/x-javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- // Meta Tags -->
    <!--booststrap-->
    <link href="assets/css/css.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <!--//booststrap end-->
    <!-- font-awesome icons -->
    <link href="assets/css/fontawesome-all.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!--stylesheets-->
    <link href="assets/css/base.css" rel='stylesheet' type='text/css' media="all">
    <link href="assets/css/stylesearch.css" rel='stylesheet' type='text/css' media="all">
    <!--//stylesheets-->
    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">

    <style>
        table{
            width: 800px;
            text-align: center;
            margin: 0 auto;
            line-height: 30px;
            border: 0px;
            border-color: white;
        }
    </style>

    <script>
        function setTab(name, cursel) {
            cursel_0 = cursel;
            for (var i = 1; i <= links_len; i++) {
                var menu = document.getElementById(name + i);
                var menudiv = document.getElementById("con_" + name + "_" + i);
                if (i == cursel) {
                    menu.className = "off";
                    menudiv.style.display = "block";
                }
                else {
                    menu.className = "";
                    menudiv.style.display = "none";
                }
            }
        }

        function Next() {
            cursel_0++;
            if (cursel_0 > links_len) cursel_0 = 1
            setTab(name_0, cursel_0);
        }

        var name_0 = 'one';
        var cursel_0 = 1;
        //循环周期，可任意更改（毫秒）
        var links_len, iIntervalId;
        onload = function () {
            var links = document.getElementById("tab1").getElementsByTagName('li')
            links_len = links.length;
            for (var i = 0; i < links_len; i++) {
                links[i].onmouseover = function () {
                    clearInterval(iIntervalId);
                    this.onmouseout = function () {
                        iIntervalId = setInterval(Next, ScrollTime);
                        ;
                    }
                }
            }
            document.getElementById("con_" + name_0 + "_" + links_len).parentNode.onmouseover = function () {
                clearInterval(iIntervalId);
                this.onmouseout = function () {
                    iIntervalId = setInterval(Next, ScrollTime);
                    ;
                }
            }
            setTab(name_0, cursel_0);
            iIntervalId = setInterval(Next, ScrollTime);
        }
    </script>
</head>
<body>

<header>
    <section class="banner1">
        <div class="agileits_w3layouts_banner_nav">
            <div class="header-bar py-sm-2">
                <div class="container py-2">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <div class="hedder-up">
                            <h1><a class="navbar-brand" href="index">民宿租赁系统</a></h1>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="index">主页<span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a href="listHouse" class="nav-link">房源探索</a>
                                </li>
                                <li class="nav-item">
                                    <a href="addHouse" class="nav-link">房源发布</a>
                                </li>

                                <c:choose>
                                    <c:when test="${(sessionScope.user!=null&&sessionScope.user.userauthority=='regular')}">
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                               role="button" data-toggle="dropdown" aria-haspopup="true"
                                               aria-expanded="false">
                                                欢迎回来，${sessionScope.user.username}
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="codes.html">我的发布</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="about.html">我的订单</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="about.html">我的收藏</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="userInfo">个人信息</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="logout">退出登录</a>
                                            </div>
                                        </li>
                                    </c:when>
                                    <c:when test="${(sessionScope.user!=null&&sessionScope.user.userauthority=='admin')}">
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                               role="button" data-toggle="dropdown" aria-haspopup="true"
                                               aria-expanded="false">
                                                以管理员身份登录，${sessionScope.user.username}
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="codes.html">用户管理</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="about.html">订单查看</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="about.html">房源列表</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="userInfo">个人信息</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="logout">退出登录</a>
                                            </div>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="nav-item">
                                            <a href="register" class="nav-link">注册</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="login" class="nav-link">登录</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                            <div class="w3_agile_login">
                                <div class="cd-main-header">
                                    <a class="cd-search-trigger" href="#cd-search"> <span></span></a>
                                    <!-- cd-header-buttons -->
                                </div>
                                <div id="cd-search" class="cd-search">
                                    <form action="#" method="post">
                                        <input name="Search" type="search" placeholder="探索...">
                                    </form>
                                </div>
                            </div>

                        </div>
                    </nav>
                </div>
            </div>
            <!-- //Navigation -->
        </div>
    </section>
</header>


<div id="orderlist">
    <table align='center' border='1' cellspacing='0'>
        <tr>
            <td>订单编号</td>
            <td>买家编号</td>
            <td>房源编号</td>
            <td>订单状态</td>
        </tr>
        <c:forEach items="${cso}" var="c1" varStatus="st">
            <tr>
                <td>${c1.orderid}</td>
                <td>${c1.buyerid}</td>
                <td>${c1.houseid}</td>
                <td>${c1.orderstate}</td>
            </tr>
        </c:forEach>
    </table>
</div>

<!-- //scrolling script -->
<script src="assets/js/main.js"></script>
<!--bootstrap working-->
<script src="assets/js/bootstrap.min.js"></script>
<!-- //bootstrap working-->
</body>
</html>
<%--<html>--%>
<%--<head>--%>
<%--<title>添加房源 - 房屋租赁系统</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="header"></div>--%>
<%--<form action="addInfo">--%>
<%--房源名称：<input type="text" name="housename"><br>--%>
<%--房源简介：<input type="text" name="houseremark"><br>--%>
<%--价格：<input type="text" name="houseprice"><br>--%>
<%--面积：<input type="text" name="housearea"><br>--%>
<%--房型：<input type="text" name="housetype"><br>--%>
<%--楼层：<input type="text" name="housefloor"><br>--%>
<%--朝向：<input type="text" name="houseorientation"><br>--%>
<%--交通：<input type="text" name="housetraffic"><br>--%>
<%--地址：<input type="text" name="houselocation"><br>--%>
<%--<input type="hidden" name="houseownerid" value="${sessionScope.user.id}">--%>
<%--<input type="submit" value="提交">--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>


<%--&lt;%&ndash;--%>
<%--Created by IntelliJ IDEA.--%>
<%--User: hasee-pc--%>
<%--Date: 2018/7/4--%>
<%--Time: 18:04--%>
<%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--<title>我的订单 - 民宿管理系统</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<table align='center' border='1' cellspacing='0'>--%>
<%--<tr>--%>

<%--<td>orderid</td>--%>
<%--<td>buyerid</td>--%>
<%--<td>houseid</td>--%>
<%--<td>orderstate</td>--%>

<%--</tr>--%>
<%--<c:forEach items="${cso}" var="c1" varStatus="st">--%>
<%--<tr>--%>
<%--<td>${c1.orderid}</td>--%>
<%--<td>${c1.buyerid}</td>--%>
<%--<td>${c1.houseid}</td>--%>
<%--<td>${c1.orderstate}</td>--%>

<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>
