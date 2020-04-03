<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/4
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>房源信息 - 民宿租赁系统</title>

    <style>
        body {
            margin: 0 auto;
        }
        h1{
            line-height: 40px;
        }

        .basicinfo{
            background-color: #f2f2f2;
        }

        .house {
            width: 1000px;
            margin: 0 auto;
            height: 450px;
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
<div class="houseinfo">
    <c:forEach items="${cs}" var="c1" varStatus="st">
        <div class="basicinfo">
            <div class="house">
                <div class="house-image">
                    <img src="../../assets/images/${c1.houseimg}" style="max-height: 390px;">
                </div>
                <div class="house-info">
                    <h1>${c1.housename}</h1>
                    房源地址：${c1.houselocation}<br>
                    价格：${c1.houseprice}<br>
                    面积：${c1.housearea}<br>
                    户型：${c1.housetype}<br>
                    朝向：${c1.houseorientation}<br>
                    交通：${c1.housetraffic}<br>
                    发布时间：${c1.housecreatetime}<br><br>

                    <form action="addOrder" class="navbar-form navbar-left" role="search" method="post">
                        <input type="hidden" value="${sessionScope.user.id}" name="buyerid"/>
                        <input type="hidden" value="${c1.houseid}" name="houseid"/>
                        <button type="submit" class="btn btn-default">立即预订</button>
                    </form>

                </div>
            </div>
        </div>
        <div class="moreinfo">
            <h2>详细信息</h2>
            <div class="remark">
                <p>${c1.houseremark}</p>
            </div>
        </div>
    </c:forEach>
</div>

<div class="comment">
    <h2>&nbsp;评价</h2>
    <c:forEach items="${cc}" var="c2" varStatus="st">
        <div class="content">
            <h3>${c2.commentscore}分</h3>
            <p>${c2.commentcontent}</p>
        </div>
    </c:forEach>
</div>


<div class="feedback">
    <h2>发表评论</h2>
    <form action="addComment" method="post">
        评分：<br><br><input type="text" name="commentscore"><br><br>
        评论：<br><br><textarea name="commentcontent" cols="70" rows="6"></textarea><br><br>
        <input type="hidden" name="houseid"
               value="<c:forEach items="${cs}" var="c1" varStatus="st">${c1.houseid}</c:forEach>">
        <input type="hidden" value="${sessionScope.user.id}" name="userid"/>
        <%--<input type="hidden"  value="${c1.houseid}" name="houseid"/>--%>
        <input type="submit" value="提交">
    </form>

    <%--<form action="listOrder" class="navbar-form navbar-left" method="post">--%>
        <%--<button type="submit" class="btn btn-default">管理员查看订单</button>--%>
    <%--</form>--%>
    <%--<form action="listOrderU" lass="navbar-form navbar-left" method="post">--%>
        <%--<input type="hidden" name="buyerid" value="${sessionScope.user.id}"/>--%>
        <%--<button type="submit" class="btn btn-default">用户查看订单</button>--%>
    <%--</form>--%>

</div>
</body>
</html>


<%--&lt;%&ndash;--%>
<%--Created by IntelliJ IDEA.--%>
<%--User: Administrator--%>
<%--Date: 2018/7/4--%>
<%--Time: 14:02--%>
<%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="houseinfo">--%>


<%--<div class="basicinfo">--%>
<%--Basicinfo:--%>
<%--<table align='center' border='1' cellspacing='0'>--%>
<%--<tr>--%>

<%--<td>name</td>--%>
<%--<td>location</td>--%>
<%--<td>price</td>--%>
<%--<td>area</td>--%>
<%--<td>time</td>--%>
<%--<td>order</td>--%>


<%--</tr>--%>
<%--<c:forEach items="${cs}" var="c1" varStatus="st">--%>
<%--<tr>--%>
<%--<td>${c1.housename}</td>--%>
<%--<td>${c1.houselocation}</td>--%>
<%--<td>${c1.houseprice}</td>--%>
<%--<td>${c1.housearea}</td>--%>
<%--<td>${c1.housecreatetime}</td>--%>
<%--<td> <form action="listHouse"   lass="navbar-form navbar-left" role="search" method="get">--%>
<%--<input type="hidden"  value="${c1.houseid}" name="houseid"/>--%>
<%--<button type="submit" class="btn btn-default" >order</button>--%>
<%--</form></td>--%>

<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>
<%--</div>--%>
<%--<div class="comment">--%>
<%--Comment:--%>
<%--<table align='center' border='1' cellspacing='0'>--%>
<%--<tr>--%>

<%--<td>username</td>--%>
<%--<td>commentcontent</td>--%>
<%--<td>commentscore</td>--%>


<%--</tr>--%>
<%--<c:forEach items="${cc}" var="c2" varStatus="st">--%>
<%--<tr>--%>
<%--<td>${c2.userid}</td>--%>
<%--<td>${c2.commentcontent}</td>--%>
<%--<td>${c2.commentscore}</td>--%>

<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>

<%--</div>--%>
<%--</div>--%>
<%--<div class="customer feedback">--%>
<%--Customer feedback:--%>

<%--<form action="addComment">--%>
<%--评论：<input type="text" name="commentcontent"><br>--%>
<%--评分：<input type="text" name="commentscore"><br>--%>
<%--<input type="hidden" name="houseid" value="<c:forEach items="${cs}" var="c1" varStatus="st">${c1.houseid}</c:forEach>">--%>
<%--<input type="hidden"  value="${sessionScope.user.id}" name="userid"/>--%>
<%--<input type="submit" value="提交">--%>
<%--</form>--%>


<%--<form action="addComment"   lass="navbar-form navbar-left"  method="post">--%>
<%--&lt;%&ndash;<input type="hidden"  value="" name="commentid"/>&ndash;%&gt;--%>
<%--<input type="hidden"  value="<c:forEach items="${cs}" var="c1" varStatus="st">${c1.houseid}</c:forEach>" name="houseid"/>--%>
<%--<input type="hidden"  value="${sessionScope.user.id}" name="userid"/>--%>

<%--comment:--%>
<%--<textarea name="commentcontent" cols="30" rows="5"></textarea>--%>
<%--score:--%>
<%--<input type="text"   name="commentscore" placeholder="score"/>--%>
<%--<button type="submit" class="btn btn-default" >submit</button>--%>
<%--</form>--%>


<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
