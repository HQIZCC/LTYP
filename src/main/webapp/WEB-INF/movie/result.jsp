<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!DOCTYPE html>
<!--[if lt IE 7 ]>
<html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]>
<html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]>
<html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8">
    <title>zMovie</title>
    <meta name="description" content="Free Responsive Html5 Css3 Templates | zerotheme.com">
    <meta name="author" content="www.zerotheme.com">

    <!-- Mobile Specific Metas
  ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
  ================================================== -->
    <link rel="stylesheet" href="${ctx}/staticfile/css/zerogrid.css">
    <link rel="stylesheet" href="${ctx}/staticfile/css/style.css">
    <link rel="stylesheet" href="${ctx}/staticfile/css/responsive.css">

    <style>

    </style>


    <script src="${ctx}/staticfile/lib/jquery-1.7.2.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {

            commClick();
        });

        function commClick() {
            var a = 1;
            if (a == 1) {
                $(".commForm").toggle();
            } else {

            }

        }

    </script>

</head>
<body>
<%@include file="../head.jsp" %>
<div class="wrap-body">


    <!--////////////////////////////////////Container-->
    <section id="container">
        <div class="wrap-container zerogrid">
            <div id="main-content" class="col-2-3">
                <div class="wrap-content">

                    <%--<h1 style="font-size:40px;padding-top:50px;">搜索结果</h1>--%>
                    <br/>

                    <div class="widget wid-related">
                        <div class="wid-header">
                            <h5>搜索结果:</h5>
                        </div>
                        <div class="wid-content">
                            <table width="95%" border="1" cellpadding="2" cellspacing="1"
                                   style="table-layout:fixed;font-size:18px;">
                                <c:forEach items="${movieInfoList}" var="m">
                                    <tr>
                                        <td>
                                            <!-- 用户 -->
                                            <a href="/movie/single?movieId=${m.movieId}"><img
                                                    style="display: inline-block;width:100px" src="${ctx}/${m.poster}"
                                                    style="width:70px;height:100px"/></a>

                                            <ul style="display: inline-block;width: 600px">
                                                <li>电影名称:${m.movieName}</li>
                                                <li>演员:${m.actor}</li>
                                                <li>国家:${m.country}</li>
                                                <li>上映时间:${m.showTime}</li>
                                                <li>导演:${m.director}</li>
                                                <li>评分:${m.avgscore} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a style="color: #c7254e" href="/movie/single?movieId=${m.movieId}">查看详情</a>
                                                </li>
                                            </ul>
                                            <hr style="height:1px;border:none;border-top:1px dashed #F8F8FF;"/>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
            <div id="sidebar" class="col-1-3">
                <div class="wrap-sidebar">
                    <!---- Start Widget ---->
                    <div class="widget wid-new-updates">
                        <div class="wid-header">
                            <h5>Hot Updates !</h5>
                        </div>
                        <div class="wid-content">
                            <ul>
                                <li><a href="#">Mad Max: Fury Road</a><span><img
                                        src="${ctx}/staticfile/images/hot.png"/></span></li>
                                <li><a href="#">The Age of Adaline</a><span><img
                                        src="${ctx}/staticfile/images/hot.png"/></span></li>
                                <li><a href="#">Pound of Flesh</a><span><img
                                        src="${ctx}/staticfile/images/hot.png"/></span></li>
                                <li><a href="#">Bloodbath Island</a><span><img src="${ctx}/staticfile/images/hot.png"/></span>
                                </li>
                                <li><a href="#">Pound of Flesh</a><span><img
                                        src="${ctx}/staticfile/images/hot.png"/></span></li>
                            </ul>
                        </div>
                    </div>
                    <!---- Start Widget ---->
                    <div class="widget wid-tag">
                        <div class="wid-header">
                            <h5>Tags</h5>
                        </div>
                        <div class="wid-content">
                            <ul>
                                <li><a href="#">animals</a></li>
                                <li><a href="#">ssdad</a></li>
                                <li><a href="#">ss</a></li>
                                <li><a href="#">asdas</a></li>
                                <li><a href="#">asdsals</a></li>
                                <li><a href="#">dasdas</a></li>
                                <li><a href="#">animals</a></li>
                                <li><a href="#">aasdasls</a></li>
                            </ul>
                        </div>
                    </div>
                    <!---- Start Widget ---->
                    <div class="widget wid-post">
                        <div class="wid-header">
                            <h5>Today's movies</h5>
                        </div>
                        <div class="wid-content">
                            <div class="post">
                                <a href="#"><img src="${ctx}/staticfile/images/1.jpg"/></a>
                                <div class="wrapper">
                                    <a href="#"><h6>A Blue Morning</h6></a>
                                    <p>March 1, 2015</p>
                                    <a href="#"><img src="${ctx}/staticfile/images/star.png"/></a>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${ctx}/staticfile/images/2.jpg"/></a>
                                <div class="wrapper">
                                    <a href="#"><h6>A Blue Morning</h6></a>
                                    <p>March 1, 2015</p>
                                    <a href="#"><img src="${ctx}/staticfile/images/star.png"/></a>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${ctx}/staticfile/images/3.jpg"/></a>
                                <div class="wrapper">
                                    <a href="#"><h6>A Blue Morning</h6></a>
                                    <p>March 1, 2015</p>
                                    <a href="#"><img src="${ctx}/staticfile/images/star.png"/></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!---- Start Widget ---->

                </div>
            </div>
        </div>
    </section>


</div>

</body>
</html>