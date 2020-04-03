<%--
  Created by IntelliJ IDEA.
  User: hasee-pc
  Date: 2018/7/3
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<html>
<head>
    <title>房源查看 - 房屋租赁系统</title>
    <style>
        body{
            background: url("../../assets/images/back.jpg");
        }
        td{
            padding: 0;
            min-width: 120px;
            text-align: center;
            height: 40px;
        }
        table{
            background-color: #cccccc;
        }
        .basicinfo{
            background-color: #f2f2f2;
            margin-bottom: 30px;
        }

        .house {
            width: 1000px;
            margin: 0 auto;
            height: 400px;
        }

        .house-image {
            background-image: url(../../assets/images/house.jpg);
            background-size: 600px;
            background-repeat: no-repeat;
            width: 60%;
            height: 100%;
            float: left;
        }

        .house-info {
            width: 35%;
            float: right;
            line-height: 30px;
            margin-top: 35px;
        }

        .moreinfo{
            width: 1000px;
            margin: 0 auto;
            padding-top: 20px;
            padding-bottom: 20px;
            border-bottom: 1px solid;
            border-color: #cccccc;
        }
        .comment{
            width: 1000px;
            margin: 0 auto;
            margin-top: 60px;
        }
        .remark{
            width: 900px;
            margin: 0 auto;
        }
        .content{
            width: 800px;
            margin: 0 auto;
            border-bottom: 1px dotted;
        }
        .feedback{
            width: 1000px;
            margin: 0 auto;
            margin-top: 60px;
        }
        p{
            font-size: 17px;
            line-height: 30px;
            text-indent: 2em;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1"><span
                            class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="#">房屋租赁系统</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="index">首页</a>
                        </li>
                        <li>
                            <a href="listHouse">租房</a>
                        </li>
                        <li>
                            <a href="#">故事</a>
                        </li>
                    </ul>
                    <form action="listHouse"   lass="navbar-form navbar-left" role="search" method="get">
                        <div class="form-group">
                            <input type="text" class="form-control" name="houselocation" placeholder="   位置 "/>

                        </div>

                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                    <form action="listHouse"   lass="navbar-form navbar-left" role="search" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" name="houseprice" placeholder=" 价格"/>
                        </div>
                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                    <form action="listHouse"   lass="navbar-form navbar-left" role="search" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" name="housearea" placeholder=" 面积"/>

                        </div>

                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                </div>
            </nav>
        </div>
    </div>

    <div class="houseinfo">
        <c:forEach items="${cs}" var="c1" varStatus="st">
            <div class="basicinfo">
                <div class="house">
                    <div class="house-image">
                        <img src="../../assets/images/${c1.houseimg}" style="max-height: 390px;">
                    </div>
                    <div class="house-info">
                        <h2>${c1.housename}</h2>
                        房源地址：${c1.houselocation}<br>
                        价格：${c1.houseprice}<br>
                        发布时间：${c1.housecreatetime}<br><br>

                        <form action="detailHouse" class="navbar-form navbar-left" role="search" method="post">
                            <input type="hidden"  value="${c1.houseid}" name="houseid"/>
                            <button type="submit" class="btn btn-default">更多</button>
                        </form>

                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

</div>
</body>
</html>







<%--&lt;%&ndash;--%>
  <%--Created by IntelliJ IDEA.--%>
  <%--User: hasee-pc--%>
  <%--Date: 2018/7/3--%>
  <%--Time: 15:37--%>
  <%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="wqs">--%>
<%--<head>--%>
    <%--<title>Search</title>--%>
    <%--<!-- Meta Tags -->--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--<meta charset="utf-8">--%>
    <%--<meta name="keywords" content="" />--%>
    <%--<script type="application/x-javascript">--%>
        <%--addEventListener("load", function () {--%>
            <%--setTimeout(hideURLbar, 0);--%>
        <%--}, false);--%>

        <%--function hideURLbar() {--%>
            <%--window.scrollTo(0, 1);--%>
        <%--}--%>
    <%--</script>--%>
    <%--<!-- // Meta Tags -->--%>
    <%--<!--booststrap-->--%>
    <%--<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">--%>
    <%--<!--//booststrap end-->--%>
    <%--<!-- font-awesome icons -->--%>
    <%--<link href="assets/css/fontawesome-all.css" rel="stylesheet">--%>
    <%--<link href="assets/css/cubeportfolio.min.css" rel="stylesheet" type="text/css" media="all">--%>

    <%--<!-- //font-awesome icons -->--%>
    <%--<!--stylesheets-->--%>
    <%--<link href="assets/css/base.css" rel='stylesheet' type='text/css' media="all">--%>
    <%--<link href="assets/css/style1.css" rel='stylesheet' type='text/css' media="all">--%>
    <%--<link href="assets/css/stylesearch.css" rel='stylesheet' type='text/css' media="all">--%>
    <%--<!--//stylesheets-->--%>
    <%--<link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">--%>
    <%--<link href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>

<%--<!--/banner-->--%>
<%--<!-- banner -->--%>
<%--<header>--%>
    <%--<section class="banner1">--%>
        <%--<div class="agileits_w3layouts_banner_nav">--%>
            <%--<div class="header-bar py-sm-2">--%>
                <%--<div class="container py-2">--%>
                    <%--<nav class="navbar navbar-expand-lg navbar-light">--%>
                        <%--<div class="hedder-up">--%>
                            <%--<h1><a class="navbar-brand" href="index.html">民宿租赁系统</a></h1>--%>
                        <%--</div>--%>
                        <%--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
                            <%--<span class="navbar-toggler-icon"></span>--%>
                        <%--</button>--%>
                        <%--<div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">--%>
                            <%--<ul class="navbar-nav">--%>
                                <%--<li class="nav-item">--%>
                                    <%--<a class="nav-link" href="index.html">主页<span class="sr-only">(current)</span></a>--%>
                                <%--</li>--%>
                                <%--<li class="nav-item active">--%>
                                    <%--<a href="about.html" class="nav-link">房源探索</a>--%>
                                <%--</li>--%>
                                <%--<li class="nav-item">--%>
                                    <%--<a href="about.html" class="nav-link">房源发布</a>--%>
                                <%--</li>--%>

                                <%--<li class="nav-item dropdown">--%>
                                    <%--<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"--%>
                                       <%--aria-expanded="false">--%>
                                        <%--用户管理--%>
                                    <%--</a>--%>
                                    <%--<div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
                                        <%--<a class="dropdown-item" href="codes.html">我的发布</a>--%>
                                        <%--<div class="dropdown-divider"></div>--%>
                                        <%--<a class="dropdown-item" href="about.html">我的订单</a>--%>
                                        <%--<div class="dropdown-divider"></div>--%>
                                        <%--<a class="dropdown-item" href="about.html">我的收藏</a>--%>
                                    <%--</div>--%>
                                <%--</li>--%>

                                <%--<li class="nav-item">--%>
                                <%--<li class="nav-item dropdown">--%>
                                    <%--<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"--%>
                                       <%--aria-expanded="false">--%>
                                        <%--欢迎--%>
                                    <%--</a>--%>
                                    <%--<div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
                                        <%--<a class="dropdown-item" href="codes.html">登录</a>--%>
                                        <%--<div class="dropdown-divider"></div>--%>
                                        <%--<a class="dropdown-item" href="about.html">注册</a>--%>
                                    <%--</div>--%>
                                <%--</li>--%>
                                <%--<li class="nav-item">--%>
                                    <%--<a href="contact.html" class="nav-link">联系我们</a>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                            <%--<div class="w3_agile_login">--%>
                                <%--<div class="cd-main-header">--%>
                                    <%--<a class="cd-search-trigger" href="#cd-search"> <span></span></a>--%>
                                    <%--<!-- cd-header-buttons -->--%>
                                <%--</div>--%>
                                <%--<div id="cd-search" class="cd-search">--%>
                                    <%--<form action="#" method="post">--%>
                                        <%--<input name="Search" type="search" placeholder="探索...">--%>
                                    <%--</form>--%>
                                <%--</div>--%>
                            <%--</div>--%>

                        <%--</div>--%>
                    <%--</nav>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<!-- //Navigation -->--%>
        <%--</div>--%>
    <%--</section>--%>
<%--</header>--%>


<%--<!--搜索:{-->--%>
<%--<div id="out" >--%>
    <%--<div id="ser_box">--%>
        <%--<input type="search" id="ipt" /><span><input id="su" value="搜索一下" class="bg s_btn" type="submit"></span>--%>
    <%--</div>--%>

    <%--<div id="bot_box">--%>
        <%--<ul id="oul"></ul>--%>
    <%--</div>--%>

<%--</div>--%>










<%--<!-- //banner -->--%>

<%--<!-- //middle section -->--%>
<%--<!-- team -->--%>
<%--<section class="team py-md-5">--%>
    <%--<div class="container py-4 mt-2">--%>
        <%--<h3 class="tittle mb-3">探索房源如下：</h3>--%>
        <%--<div class="parent">--%>
            <%--<!----%>
                           <%--<div class="child">--%>
                                  <%--<div class="col-md-3 col-sm-6 team-grids aos-init" data-aos="flip-left">--%>
                                <%--<img src="images/te1.jpg" class="img-responsive" alt="">--%>
                                <%--<div class="team-info">--%>
                                    <%--<div class="caption">--%>
                                        <%--<h4>John Doe</h4>--%>
                                        <%--<h6>Lorem--%>
                                            <%--</h6><h6>--%>
                                    <%--</h6></div>--%>
                                    <%--<div class="social-icons-section">--%>
                                        <%--<a class="fac" href="#">--%>
                                            <%--<i class="fab fa-facebook-f"></i>--%>
                                        <%--</a>--%>
                                        <%--<a class="twitter" href="#">--%>
                                            <%--<i class="fab fa-twitter"></i>--%>
                                        <%--</a>--%>
                                        <%--<a class="pinterest" href="#">--%>
                                            <%--<i class="fab fa-pinterest-p"></i>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                 <%---->--%>
        <%--</div>--%>
    <%--</div>--%>


    <%--<div id="property-gallery" class="cbp listing1">--%>

        <%--<c:forEach items="${hs}" var="c1" varStatus="st">--%>
            <%--<div class="cbp-item latest sale">--%>
                <%--<div class="property_item">--%>
                    <%--<div class="image">--%>
                        <%--<a href="/listdetail?hid=${c1.id}&cid=${cid}"> <img src="${basePath}${c1.house_img}" alt="latest property" class="img-responsive"></a>--%>
                        <%--<div class="price clearfix">--%>
                            <%--<span class="tag pull-right">¥<span>${c1.house_price}</span> /m²</span>--%>
                        <%--</div>--%>
                        <%--<span class="tag_t">--%>
                                <%--<c:if test="${c1.house_new eq 0}">新房</c:if>--%>
                                <%--<c:if test="${c1.house_new eq 1}">二手房</c:if>--%>
                            <%--</span>--%>
                        <%--<span class="tag_l">推荐</span>--%>
                    <%--</div>--%>
                    <%--<div class="proerty_content">--%>
                        <%--<div class="proerty_text">--%>
                            <%--<h3 class="captlize"><a href="property_detail.html">${c1.house_name}</a></h3>--%>
                        <%--</div>--%>
                        <%--<div class="property_meta transparent">--%>
                            <%--<span><i class="icon-select-an-objecto-tool"></i>${c1.house_area} m²</span>--%>
                            <%--<span><i class="icon-bed"></i>--%>
                                        <%--<c:if test="${c1.house_type eq 0}">一室一厅</c:if>--%>
                                        <%--<c:if test="${c1.house_type eq 1}">二室一厅</c:if>--%>
                                        <%--<c:if test="${c1.house_type eq 2}">三室一厅</c:if>--%>
                                        <%--<c:if test="${c1.house_type eq 3}">两室两厅</c:if>--%>
                                        <%--<c:if test="${c1.house_type eq 4}">三室两厅</c:if>--%>
                                        <%--<c:if test="${c1.house_type eq 5}">四室两厅</c:if>--%>
                                <%--</span>--%>
                            <%--<span><i class="icon-safety-shower"></i>--%>
                                        <%--<c:if test="${c1.house_decoration eq 0}">未装修</c:if>--%>
                                        <%--<c:if test="${c1.house_decoration eq 1}">简易装修</c:if>--%>
                                        <%--<c:if test="${c1.house_decoration eq 2}">普通装修</c:if>--%>
                                        <%--<c:if test="${c1.house_decoration eq 3}">豪华装修</c:if>--%>
                                <%--</span>--%>
                        <%--</div>--%>
                        <%--<br>--%>
                        <%--<div class="favroute clearfix">--%>
                            <%--<p><i class="icon-calendar2"></i>&nbsp;5 天前 </p>--%>
                            <%--<ul class="pull-right">--%>
                                <%--<li><a href="/addgwc?cid=${cid}&hid=${c1.id}"><i class="icon-like"></i></a></li>--%>
                                <%--<li><a href="#seventy" class="share_expender" data-toggle="collapse"><i class="icon-share3"></i></a></li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</c:forEach>--%>
    <%--</div>--%>








    <%--<!--    <div class="left"></div>--%>
                     <%--<div class="right">--%>
                     <%--<p>Iphone7 PLUS XXXXXXXXXX</p>--%>
                     <%--<span>总人数99</span>--%>
                     <%--<span>剩余人数33</span>--%>
                     <%--<div class="btn">立即参与</div>--%>
                     <%--</div> -->--%>





    <%--</div>--%>
<%--</section>--%>

<%--<!-- //scrolling script -->--%>
<%--<script src="assets/js/main.js"></script>--%>
<%--<!--bootstrap working-->--%>
<%--<script src="assets/js/bootstrap.min.js"></script>--%>
<%--<!-- //bootstrap working-->--%>
<%--</body>--%>
<%--</html>--%>




<%--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
<%--<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>--%>
<%--<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

<%--<html>--%>
<%--<head>--%>
    <%--<title>房源查看 - 房屋租赁系统</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
    <%--<div class="row clearfix">--%>
        <%--<div class="col-md-12 column">--%>
            <%--<nav class="navbar navbar-default" role="navigation">--%>
                <%--<div class="navbar-header">--%>
                    <%--<button type="button" class="navbar-toggle" data-toggle="collapse"--%>
                            <%--data-target="#bs-example-navbar-collapse-1"><span--%>
                            <%--class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span--%>
                            <%--class="icon-bar"></span><span class="icon-bar"></span></button>--%>
                    <%--<a class="navbar-brand" href="#">房屋租赁系统</a>--%>
                <%--</div>--%>

                <%--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">--%>
                    <%--<ul class="nav navbar-nav">--%>
                        <%--<li class="active">--%>
                            <%--<a href="index">首页</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="listHouse">租房</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="#">故事</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                    <%--<form action="listHouse"   lass="navbar-form navbar-left" role="search" method="get">--%>
                        <%--<div class="form-group">--%>
                            <%--<input type="text" class="form-control" name="houselocation" placeholder="   位置 "/>--%>

                        <%--</div>--%>

                        <%--<button type="submit" class="btn btn-default">搜索</button>--%>
                    <%--</form>--%>
                    <%--<form action="listHouse"   lass="navbar-form navbar-left" role="search" method="post">--%>
                        <%--<div class="form-group">--%>
                            <%--<input type="text" class="form-control" name="houseprice" placeholder=" 价格"/>--%>
                        <%--</div>--%>
                        <%--<button type="submit" class="btn btn-default">搜索</button>--%>
                    <%--</form>--%>
                    <%--<form action="listHouse"   lass="navbar-form navbar-left" role="search" method="post">--%>
                        <%--<div class="form-group">--%>
                            <%--<input type="text" class="form-control" name="housearea" placeholder=" 面积"/>--%>

                        <%--</div>--%>

                        <%--<button type="submit" class="btn btn-default">搜索</button>--%>
                    <%--</form>--%>

                    <%--<ul class="nav navbar-nav navbar-right">--%>
                        <%--<li>--%>
                            <%--<a href="addHouse">添加房源</a>--%>
                        <%--</li>--%>
                        <%--<li class="dropdown">--%>
                            <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">欢迎${sessionScope.user.username}<strong class="caret"></strong></a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li>--%>
                                    <%--<a href="login">登录</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="register">注册</a>--%>
                                <%--</li>--%>
                                <%--<li class="divider">--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">Separated link</a>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</nav>--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<table align='center' border='1' cellspacing='0'>--%>
        <%--<tr>--%>

            <%--<td>name</td>--%>
            <%--<td>location</td>--%>
            <%--<td>price</td>--%>
            <%--<td>area</td>--%>
            <%--<td>remark</td>--%>
            <%--<td>time</td>--%>
            <%--<td>more</td>--%>

        <%--</tr>--%>
        <%--<c:forEach items="${cs}" var="c1" varStatus="st">--%>
            <%--<tr>--%>
                <%--<td>${c1.housename}</td>--%>
                <%--<td>${c1.houselocation}</td>--%>
                <%--<td>${c1.houseprice}</td>--%>
                <%--<td>${c1.housearea}</td>--%>
                <%--<td>${c1.houseremark}</td>--%>
                <%--<td>${c1.housecreatetime}</td>--%>
                <%--<td>--%>
                    <%--<form action="detailHouse"   lass="navbar-form navbar-left" role="search" method="get">--%>
                        <%--<input type="hidden"  value="${c1.houseid}" name="houseid"/>--%>
                        <%--<button type="submit" class="btn btn-default" >more</button>--%>
                    <%--</form>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
    <%--</table>--%>

<%--</div>--%>
<%--</body>--%>
<%--</html>--%>




<%--&lt;%&ndash;--%>
  <%--Created by IntelliJ IDEA.--%>
  <%--User: hasee-pc--%>
  <%--Date: 2018/7/3--%>
  <%--Time: 15:37--%>
  <%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
<%--<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>--%>
<%--<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

<%--<html>--%>
<%--<head>--%>
    <%--<title>房源查看 - 房屋租赁系统</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
    <%--<div class="row clearfix">--%>
        <%--<div class="col-md-12 column">--%>
            <%--<nav class="navbar navbar-default" role="navigation">--%>
                <%--<div class="navbar-header">--%>
                    <%--<button type="button" class="navbar-toggle" data-toggle="collapse"--%>
                            <%--data-target="#bs-example-navbar-collapse-1"><span--%>
                            <%--class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span--%>
                            <%--class="icon-bar"></span><span class="icon-bar"></span></button>--%>
                    <%--<a class="navbar-brand" href="#">房屋租赁系统</a>--%>
                <%--</div>--%>

                <%--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">--%>
                    <%--<ul class="nav navbar-nav">--%>
                        <%--<li class="active">--%>
                            <%--<a href="index">首页</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="listHouse">租房</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="#">故事</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                    <%--<form class="navbar-form navbar-left" role="search">--%>
                        <%--<div class="form-group">--%>
                            <%--<input type="text" class="form-control"/>--%>
                        <%--</div>--%>
                        <%--<button type="submit" class="btn btn-default">搜索</button>--%>
                    <%--</form>--%>
                    <%--<ul class="nav navbar-nav navbar-right">--%>
                        <%--<li>--%>
                            <%--<a href="addHouse">添加房源</a>--%>
                        <%--</li>--%>
                        <%--<li class="dropdown">--%>
                            <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">欢迎${sessionScope.user.username}<strong class="caret"></strong></a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li>--%>
                                    <%--<a href="login">登录</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="register">注册</a>--%>
                                <%--</li>--%>
                                <%--<li class="divider">--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">Separated link</a>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</nav>--%>
        <%--</div>--%>
    <%--</div>--%>
        <%--<table align='center' border='1' cellspacing='0'>--%>
        <%--<tr>--%>
            <%--<td>id</td>--%>
            <%--<td>name</td>--%>
            <%--<td>price</td>--%>
            <%--<td>area</td>--%>
            <%--<td>time</td>--%>
        <%--</tr>--%>
        <%--<c:forEach items="${cs}" var="c1" varStatus="st">--%>
            <%--<tr>--%>
                <%--<td>${c1.houseid}</td>--%>
                <%--<td>${c1.housename}</td>--%>
                <%--<td>${c1.houseprice}</td>--%>
                <%--<td>${c1.housearea}</td>--%>
                <%--<td>${c1.housecreatetime}</td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
    <%--</table>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
