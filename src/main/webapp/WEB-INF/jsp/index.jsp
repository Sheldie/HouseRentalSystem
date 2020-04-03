<%--
  Created by IntelliJ IDEA.
  User: hasee-pc
  Date: 2018/6/24
  Time: 0:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="wqs">
<head>
    <title>民宿租赁系统</title>
    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="" />
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
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <!--//booststrap end-->
    <!-- font-awesome icons -->
    <link href="assets/css/fontawesome-all.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!--stylesheets-->
    <link href="assets/css/base.css" rel='stylesheet' type='text/css' media="all">
    <!--//stylesheets-->
    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
</head>
<body>

<!--/banner-->
<!-- banner -->
<header>
    <section class="main_section_agile">
        <div class="agileits_w3layouts_banner_nav">

            <div class="header-bar py-sm-2">
                <div class="container py-2">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <div class="hedder-up">
                            <h1><a class="navbar-brand" href="index">民宿租赁系统</a></h1>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
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
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                               aria-expanded="false">
                                                欢迎回来，${sessionScope.user.username}
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="codes.html">我的发布</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="#"><form action="listOrderU"> <input type="hidden" name="buyerid" value="${sessionScope.user.id}"/><input type="submit" value="我的订单" style="background-color: white;
    border: none;
    margin-left: -5px;"></form></a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="userInfo">个人信息</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="logout">退出登录</a>
                                            </div>
                                        </li>
                                    </c:when>
                                    <c:when test="${(sessionScope.user!=null&&sessionScope.user.userauthority=='admin')}">
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                               aria-expanded="false">
                                                以管理员身份登录，${sessionScope.user.username}
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="userManage">用户管理</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="houseManage">房源分析</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="listOrder">订单查看</a>
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
        <!-- w3-banner -->
        <div class="w3-banner">
            <div id="typer"></div>
            <p class="mx-auto py-3">难忘的旅程从这里开始。不论出门在外或在家附近都能开展探索之旅，您都可以获取世界各地独特房源信息。</p>
        </div>

        <!-- //w3-banner -->

    </section>
</header>
<!-- //banner -->
<!-- about  -->
<section class="wthree-row w3-about py-md-5">
    <div class="container py-4 mt-2">
        <h3 class="tittle text-center mb-3">热 门 民 宿</h3>
        <p class="tit text-center mx-auto">这是我们为您精心挑选的热门民宿，期待为您提供一个美好的入住体验！</p>
        <div class="card-deck pt-4 mt-md-4">
            <div class="card">
                <img src="assets/images/timg1.gif" class="img-fluid"  alt="Card image cap">
                <div class="card-body w3ls-card">
                    <h4 class="card-title">温馨静谧的独栋别墅</h4>
                    <p class="card-text mb-3 ">复古的家具、典雅的装饰、超大的户外空间、搭配上户外泳池和远方美景，给你一个全方位的民宿体验。</p>
                    <a href="#" data-toggle="modal" data-target="#myModal">了解更多</a>
                </div>
                <div class="card-footer">
                    <small class="text-muted">地点：杭州</small>
                </div>
            </div>
            <div class="card">
                <img src="assets/images/timg2.gif" class="img-fluid"  alt="Card image cap">
                <div class="card-body w3ls-card">
                    <h4 class="card-title">清新朴素的家庭套房</h4>
                    <p class="card-text mb-3 ">以竹木为主要材料打造的巨大房子，内有精致的茶几、宽长的饭桌、搭配一个小吧台，是家庭聚会交流的好房子</p>
                    <a href="#" data-toggle="modal" data-target="#myModal">了解更多</a>
                </div>
                <div class="card-footer">
                    <small class="text-muted">地点：泰国</small>
                </div>
            </div>
            <div class="card">
                <img src="assets/images/timg3.gif" class="img-fluid"  alt="Card image cap">
                <div class="card-body w3ls-card">
                    <h4 class="card-title">蓝天白云爱情海套房</h4>
                    <p class="card-text mb-3 ">白色的摩登沙发，搭配窗明几净的自由空间，深浅层次交叠，让你忘记时间，沉浸在旅途中的幸福氛围！</p>
                    <a href="#" data-toggle="modal" data-target="#myModal">了解更多</a>
                </div>
                <div class="card-footer">
                    <small class="text-muted">地点：台湾</small>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //about -->
<!-- services -->



<!-- features -->
<!--
<div class="middle-w3l py-md-5">
    <div class="container py-4 mt-2">
        <h2>reach your destination 100% sure and safe</h2>
        <p class="my-4">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim.</p>
        <a href="contact.html" class="blog-btn">Contact Us</a>
    </div>
</div> -->
<!-- //middle section -->
<!-- news  -->



<!-- //Modal -->
<!--js working-->
<script src="assets/js/jquery.min.js"></script>
<!--//js working-->
<!-- smooth scrolling -->
<script type="text/javascript" src="assets/js/move-top.js"></script>
<script type="text/javascript" src="assets/js/easing.js"></script>
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->
<!-- //smooth scrolling -->
<!-- stats -->
<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/jquery.countup.js"></script>
<script>
    $('.counter-agileits-w3layouts').countUp();
</script>
<!-- //stats -->
<!-- typer js--><!-- For banner text -->
<script src='assets/js/jquery.typer.js'></script>
<script>
    var win = $(window),
        foo = $('#typer');

    foo.typer(['We Provide Best Guidance', 'Experience The Best Trip ', 'Summer Travel Your Holiday ']);

    // unneeded...
    win.resize(function(){
        var fontSize = Math.max(Math.min(win.width() / (1 * 10), parseFloat(Number.POSITIVE_INFINITY)), parseFloat(Number.NEGATIVE_INFINITY));

        foo.css({
            fontSize: fontSize * .8 + 'px'
        });
    }).resize();
</script>
<!-- //typer js--><!-- //For banner text -->


<!-- scrolling script -->
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
        });
    });
</script>
<!-- //scrolling script -->
<script src="assets/js/main.js"></script>
<!--bootstrap working-->
<script src="assets/js/bootstrap.min.js"></script>
<!-- //bootstrap working-->
</body>
</html>
<%--<html>--%>
<%--<head>--%>
    <%--<title>房屋租赁系统</title>--%>
    <%--&lt;%&ndash;<link href="css/bootstrap.css" rel="stylesheet">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<script src="js/jquery.min.js"></script>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<script src="js/bootstrap.js"></script>&ndash;%&gt;--%>
    <%--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>--%>
    <%--<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
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
                            <%--&lt;%&ndash;<%if(session.getAttribute("user") != null) {%>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<ul class="dropdown-menu">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="login">我的订单</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="register">我的发布</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="register">我的评论</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li class="divider">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="backstage">退出登录</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<% }%>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<%else{%>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<ul class="dropdown-menu">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="login">登录</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="register">注册</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<% }%>&ndash;%&gt;--%>
                            <%--<c:choose>--%>
                                <%--<c:when test="${(sessionScope.user!=null&&sessionScope.user.userauthority=='regular')}">--%>
                                    <%--<ul class="dropdown-menu">--%>
                                        <%--<li>--%>
                                            <%--<a href="login">我的订单</a>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<a href="register">我的发布</a>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<a href="register">我的评论</a>--%>
                                        <%--</li>--%>
                                        <%--<li class="divider">--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<form action="userInfo">--%>
                                                <%--<input name="user" type="hidden" value="${sessionScope.user}">--%>
                                                <%--<a href="userInfo">个人信息</a>--%>
                                            <%--</form>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<a href="logout">退出登录</a>--%>
                                        <%--</li>--%>
                                    <%--</ul>--%>
                                <%--</c:when>--%>
                                <%--<c:when test="${(sessionScope.user!=null&&sessionScope.user.userauthority=='admin')}">--%>
                                    <%--<ul class="dropdown-menu">--%>
                                        <%--<li>--%>
                                            <%--<a href="login">用户管理</a>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<a href="register">订单查看</a>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<a href="register">房源列表</a>--%>
                                        <%--</li>--%>
                                        <%--<li class="divider">--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<form action="userInfo">--%>
                                                <%--<input name="user" type="hidden" value="${sessionScope.user}">--%>
                                                <%--<a href="userInfo">个人信息</a>--%>
                                            <%--</form>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<a href="logout">退出登录</a>--%>
                                        <%--</li>--%>
                                    <%--</ul>--%>
                                <%--</c:when>--%>
                                <%--<c:otherwise>--%>
                                    <%--<ul class="dropdown-menu">--%>
                                        <%--<li>--%>
                                            <%--<a href="login">登录</a>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<a href="register">注册</a>--%>
                                        <%--</li>--%>
                                    <%--</ul>--%>
                                <%--</c:otherwise>--%>
                            <%--</c:choose>--%>

                            <%--&lt;%&ndash;<ul class="dropdown-menu">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="login">登录</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="register">注册</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li class="divider">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="backstage">用户后台</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>

            <%--</nav>--%>
            <%--<div class="jumbotron">--%>
                <%--<h1>--%>
                    <%--Hello, world!--%>
                <%--</h1>--%>
                <%--<p>--%>
                    <%--This is a template for a simple marketing or informational website. It includes a large callout--%>
                    <%--called the hero unit and three supporting pieces of content. Use it as a starting point to create--%>
                    <%--something more unique.--%>
                <%--</p>--%>
                <%--<p>--%>
                    <%--<a class="btn btn-primary btn-large" href="#">Learn more</a>--%>
                <%--</p>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="row clearfix">--%>
        <%--<div class="col-md-4 column">--%>
            <%--<h2>--%>
                <%--Heading--%>
            <%--</h2>--%>
            <%--<p>--%>
                <%--Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris--%>
                <%--condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis--%>
                <%--euismod. Donec sed odio dui.--%>
            <%--</p>--%>
            <%--<p>--%>
                <%--<a class="btn" href="#">View details »</a>--%>
            <%--</p>--%>
        <%--</div>--%>
        <%--<div class="col-md-4 column">--%>
            <%--<h2>--%>
                <%--Heading--%>
            <%--</h2>--%>
            <%--<p>--%>
                <%--Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris--%>
                <%--condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis--%>
                <%--euismod. Donec sed odio dui.--%>
            <%--</p>--%>
            <%--<p>--%>
                <%--<a class="btn" href="#">View details »</a>--%>
            <%--</p>--%>
        <%--</div>--%>
        <%--<div class="col-md-4 column">--%>
            <%--<h2>--%>
                <%--Heading--%>
            <%--</h2>--%>
            <%--<p>--%>
                <%--Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris--%>
                <%--condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis--%>
                <%--euismod. Donec sed odio dui.--%>
            <%--</p>--%>
            <%--<p>--%>
                <%--<a class="btn" href="#">View details »</a>--%>
            <%--</p>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>