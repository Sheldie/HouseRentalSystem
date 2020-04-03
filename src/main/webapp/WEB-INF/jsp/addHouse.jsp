<%--
  Created by IntelliJ IDEA.
  User: hasee-pc
  Date: 2018/6/26
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="wqs">
<head>
    <title>发布房源 - 民宿租赁系统</title>
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
    <link href="assets/css/css.css" rel="stylesheet" type="text/css" />
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


    <script>
        function setTab(name,cursel){
            cursel_0=cursel;
            for(var i=1; i<=links_len; i++){
                var menu = document.getElementById(name+i);
                var menudiv = document.getElementById("con_"+name+"_"+i);
                if(i==cursel){
                    menu.className="off";
                    menudiv.style.display="block";
                }
                else{
                    menu.className="";
                    menudiv.style.display="none";
                }
            }
        }
        function Next(){
            cursel_0++;
            if (cursel_0>links_len)cursel_0=1
            setTab(name_0,cursel_0);
        }
        var name_0='one';
        var cursel_0=1;
        //循环周期，可任意更改（毫秒）
        var links_len,iIntervalId;
        onload=function(){
            var links = document.getElementById("tab1").getElementsByTagName('li')
            links_len=links.length;
            for(var i=0; i<links_len; i++){
                links[i].onmouseover=function(){
                    clearInterval(iIntervalId);
                    this.onmouseout=function(){
                        iIntervalId = setInterval(Next,ScrollTime);;
                    }
                }
            }
            document.getElementById("con_"+name_0+"_"+links_len).parentNode.onmouseover=function(){
                clearInterval(iIntervalId);
                this.onmouseout=function(){
                    iIntervalId = setInterval(Next,ScrollTime);;
                }
            }
            setTab(name_0,cursel_0);
            iIntervalId = setInterval(Next,ScrollTime);
        }
    </script>
    <script language="javascript" type="text/javascript">
        //定义 城市 数据数组
        cityArray = new Array();
        cityArray[0] = new Array("北京市","东城区|西城区|朝阳区|海淀区|丰台区|石景山区|房山区|通州区|顺义区|大兴区|昌平区|平谷区|怀柔区|门头沟区|密云县|延庆县");
        cityArray[1] = new Array("上海市"," 黄浦区|卢湾区|徐汇区|长宁区|静安区|普陀区|闸北区|虹口区|杨浦区|宝山区|闵行区|嘉定区|浦东新区|松江区|金山区|青浦区|南汇区|奉贤区");
        cityArray[2] = new Array("天津市","和平区|河西区|河东区|河北区|南开区|红桥区|东丽区|西青区|北辰区|津南区|塘沽区|大港区|汉沽区");
        cityArray[3] = new Array("重庆市","渝中区|大渡口区|江北区|沙坪坝区|九龙坡区|南岸区|北碚区|綦江区|双桥区|渝北区|巴南区|万州区|涪陵区|黔江区|长寿区|江津区|合川区|永川区|南川区");
        cityArray[4] = new Array("河北省","石家庄|唐山|秦皇岛|邯郸|邢台|保定|张家口|承德|沧州|廊坊|衡水");
        cityArray[5] = new Array("山西省","太原|大同|阳泉|长治|晋城|朔州|晋中|运城|忻州|临汾|吕梁");
        cityArray[6] = new Array("内蒙古","呼和浩特|包头|乌海|赤峰|通辽|鄂尔多斯|呼伦贝尔|巴彦淖尔|乌兰察布|兴安|锡林郭勒|阿拉善");
        cityArray[7] = new Array("辽宁省","沈阳|大连|鞍山|抚顺|本溪|丹东|锦州|营口|阜新|辽阳|盘锦|铁岭|朝阳|葫芦岛");
        cityArray[8] = new Array("吉林省","长春|吉林|四平|辽源|通化|白山|松原|白城|延边");
        cityArray[9] = new Array("黑龙江","哈尔滨|齐齐哈尔|鸡西|鹤岗|双鸭山|大庆|伊春|佳木斯|七台河|牡丹江|黑河|绥化|大兴安岭");
        cityArray[10] = new Array("江苏省","南京|无锡|徐州|常州|苏州|南通|连云港|淮安|盐城|扬州|镇江|泰州|宿迁");
        cityArray[11] = new Array("浙江省","杭州|宁波|温州|嘉兴|湖州|绍兴|金华|衢州|舟山|台州|丽水");
        cityArray[12] = new Array("安徽省","合肥|芜湖|蚌埠|淮南|马鞍山|淮北|铜陵|安庆|黄山|滁州|阜阳|宿州|巢湖|六安|亳州|池州|宣城");
        cityArray[13] = new Array("福建省","福州|厦门|莆田|三明|泉州|漳州|南平|龙岩|宁德");
        cityArray[14] = new Array("江西省","南昌|景德镇|萍乡|九江|新余|鹰潭|赣州|吉安|宜春|抚州|上饶");
        cityArray[15] = new Array("山东省","济南|青岛|淄博|枣庄|东营|烟台|潍坊|威海|济宁|泰安|日照|莱芜|临沂|德州|聊城|滨州|菏泽");
        cityArray[16] = new Array("河南省","郑州|开封|洛阳|平顶山|安阳|鹤壁|新乡|焦作|濮阳|许昌|漯河|三门峡|南阳|商丘|信阳|周口|驻马店|济源");
        cityArray[17] = new Array("湖北省","武汉|黄石|襄樊|十堰|荆州|宜昌|荆门|鄂州|孝感|黄冈|咸宁|随州|恩施");
        cityArray[18] = new Array("湖南省","长沙|株洲|湘潭|衡阳|邵阳|岳阳|常德|张家界|益阳|郴州|永州|怀化|娄底|湘西");
        cityArray[19] = new Array("广东省","广州|深圳|珠海|汕头|韶关|佛山|江门|湛江|茂名|肇庆|惠州|梅州|汕尾|河源|阳江|清远|东莞|中山|潮州|揭阳云浮");
        cityArray[20] = new Array("广西省","南宁|柳州|桂林|梧州|北海|防城港|钦州|贵港|玉林|百色|贺州|河池|来宾|崇左");
        cityArray[21] = new Array("海南省","海口|三亚");
        cityArray[22] = new Array("四川省","成都|自贡|攀枝花|泸州|德阳|绵阳|广元|遂宁|内江|乐山|南充|宜宾|广安|达州|眉山|雅安|巴中|资阳|阿坝|甘孜凉山");
        cityArray[23] = new Array("贵州省","贵阳|六盘水|遵义|安顺|铜仁|毕节|黔西南|黔东南|黔南");
        cityArray[24] = new Array("陕西省","西安|铜川|宝鸡|咸阳|渭南|延安|汉中|榆林|安康|商洛");
        cityArray[25] = new Array("甘肃省","兰州|嘉峪关|金昌|白银|天水|武威|张掖|平凉");
        cityArray[26] = new Array("云南省","昆明市|大理市|曲靖市|玉溪市|昭通市|楚雄市|红河市|文山市|思茅市|西双版纳市|保山市|德宏市|丽江市|怒江市|迪庆市|临沧市");
        cityArray[27] = new Array("其它","其它");

        function getCity(currProvince)
        {
            //当前 所选择 的 省
            var currProvince = currProvince;
            var i,j,k;
            //清空 城市 下拉选单
            document.all.selCity.length = 0 ;
            for (i = 0 ;i <cityArray.length;i++)
            {
                //得到 当前省 在 城市数组中的位置
                if(cityArray[i][0]==currProvince)
                {
                    //得到 当前省 所辖制的 地市
                    tmpcityArray = cityArray[i][1].split("|")
                    for(j=0;j<tmpcityArray.length;j++)
                    {
                        //填充 城市 下拉选单
                        document.all.selCity.options[document.all.selCity.length] = new Option(tmpcityArray[j],tmpcityArray[j]);
                    }
                }
            }
        }
    </script>
</head>
<body>

<!--/banner-->
<!-- banner -->
<header>
    <section class="banner1">
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
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                               aria-expanded="false">
                                                欢迎回来，${sessionScope.user.username}
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="codes.html">我的发布</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="about.html">我的订单</a>
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
                                                <a class="dropdown-item" href="codes.html">用户管理</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="about.html">订单查看</a>
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









<div id="content">
    <div class="tab1" id="tab1">
        <div class="menu">
            <ul>
                <li id="one1" onclick="setTab('one',1)">发布房源</li>
            </ul>
        </div>
        <div class="menudiv">
            <div id="con_one_1">
                <div id="1">
                    <form action="addInfo">
                        名称：<input type="text" name="housename"><br><br>
                        简介：<input type="text" name="houseremark"><br><br>
                        价格：<input type="text" name="houseprice"><br><br>
                        面积：<input type="text" name="housearea"><br><br>
                        房型：<input type="text" name="housetype"><br><br>
                        楼层：<input type="text" name="housefloor"><br><br>
                        朝向：<input type="text" name="houseorientation"><br><br>
                        交通：<input type="text" name="housetraffic"><br><br>
                        地址：<input type="text" name="houselocation"><br><br>
                        图片：<<input id="file" type="file" name="#"><br><br>
                        <input type="hidden" name="houseimg" value="$("#file").val()"><br><br><br>
                        <input type="hidden" name="houseownerid" value="${sessionScope.user.id}"><br><br><br>
                        <input type="submit" value="提交">
                    </form>
                    <%--<form action="userInfo" method="post">--%>
                        <%--<table width="500" border="0" cellpadding="0" cellspacing="0" align="center" >--%>

                            <%--<form action="userInfo">--%>
                                <%--<tr>--%>
                                    <%--<td width="142" align="right">身份证号：</td>--%>
                                    <%--<td width="352"><input type="text" style="width:200;height:40" value="" size="30" /></td>--%>
                                <%--</tr>--%>
                                <%--<td height="30" align="right">手机号：</td>--%>
                                <%--<td><input type="text" size="30" /></td>--%>
                                <%--</tr>--%>
                                <%--<td height="30" align="right">性别：</td>--%>
                                <%--<td>--%>
                                    <%--<form id="form1" name="form1" method="post" action="">--%>
                                        <%--<p>--%>
                                            <%--<label>--%>
                                                <%--<input type="radio" name="RadioGroup1" value="男" id="RadioGroup1_0" />--%>
                                                <%--男</label>--%>

                                            <%--<label>--%>
                                                <%--<input type="radio" name="RadioGroup1" value="女" id="RadioGroup1_1" />--%>
                                                <%--女</label>--%>
                                            <%--<br />--%>
                                        <%--</p>--%>
                                    <%--</form></td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                <%--</tr>--%>


                                <%--<td height="28" align="right">所在地：</td>--%>
                                <%--<td><form id="form1">--%>
                                    <%--<select id="selProvince" onChange = "getCity(this.options[this.selectedIndex].value)">--%>
                                        <%--<option value="">-请选择-</option>--%>
                                        <%--<option value="北京市">北京市</option>--%>
                                        <%--<option value="上海市">上海市</option>--%>
                                        <%--<option value="天津市">天津市</option>--%>
                                        <%--<option value="重庆市">重庆市</option>--%>
                                        <%--<option value="河北省">河北省</option>--%>
                                        <%--<option value="内蒙古">内蒙古</option>--%>
                                        <%--<option value="吉林省">吉林省</option>--%>
                                        <%--<option value="辽宁省">辽宁省</option>--%>
                                        <%--<option value="黑龙江">黑龙江</option>--%>
                                        <%--<option value="江苏省">江苏省</option>--%>
                                        <%--<option value="浙江省">浙江省</option>--%>
                                        <%--<option value="安徽省">安徽省</option>--%>
                                        <%--<option value="福建省">福建省</option>--%>
                                        <%--<option value="江西省">江西省</option>--%>
                                        <%--<option value="山东省">山东省</option>--%>
                                        <%--<option value="河南省">河南省</option>--%>
                                        <%--<option value="湖北省">湖北省</option>--%>
                                        <%--<option value="湖南省">湖南省</option>--%>
                                        <%--<option value="广东省">广东省</option>--%>
                                        <%--<option value="广西省">广西省</option>--%>
                                        <%--<option value="海南省">海南省</option>--%>
                                        <%--<option value="四川省">四川省</option>--%>
                                        <%--<option value="贵州省">贵州省</option>--%>
                                        <%--<option value="陕西省">陕西省</option>--%>
                                        <%--<option value="甘肃省">甘肃省</option>--%>
                                        <%--<option value="云南省">云南省</option>--%>
                                        <%--<option value="其它">其它</option>--%>
                                    <%--</select>--%>

                                    <%--<select id="selCity">--%>
                                        <%--<option>-城市-</option>--%>
                                    <%--</select>--%>
                                <%--</form>--%>
                                <%--</td>--%>
                                <%--</tr>--%>
                                <%--&lt;%&ndash;<td height="30" align="right">个人说明：</td><td><input name="" type="text" id="test1" /></td>&ndash;%&gt;--%>

                                <%--</tr>--%>
                                <%--</tr>--%>

                                <%--</tr>--%>
                                <%--</tr>--%>

                        <%--</table>--%>

                        <%--<input type="submit" value="修改">--%>
                    <%--</form>--%>
                <%--</div>--%>

                <%--<div id="bc01"></div>--%>
            </div>
        </div>
    </div>
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
