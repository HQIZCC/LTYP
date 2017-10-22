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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- CSS
  ================================================== -->
    <link rel="stylesheet" href="${ctx}/staticfile/css/zerogrid.css">
    <link rel="stylesheet" href="${ctx}/staticfile/css/style.css">
    <link rel="stylesheet" href="${ctx}/staticfile/css/responsive.css">
    <meta name="renderer" content="webkit">
    <meta name="referrer" content="always">
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
    <link href="https://img3.doubanio.com/f/shire/94213e812acbb00123f685909b4768bb304d16f3/css/douban.css" rel="stylesheet" type="text/css">

    <link href="https://img3.doubanio.com/f/movie/8864d3756094f5272d3c93e30ee2e324665855b0/css/movie/base/init.css" rel="stylesheet">
</head>
<body>
<%@include file="../head.jsp" %>
<div class="wrap-body">


    <!--////////////////////////////////////Container-->
    <section id="container">
        <div class="wrap-container zerogrid">
            <div id="main-content" class="col-2-3">
                <div class="wrap-content">

                    <h1 style="font-size:40px;padding-top:50px;color:white;">电影排行榜</h1>
                    <br/>

                    <div class="widget wid-related">
                        <div class="wid-header">
                            <h5>排行:</h5>
                        <a href="list" style="width:60px;margin-top:15px;margin-left:630px;font-size: large;color: pink">刷新</a>
                        </div>
                        <div class="wid-content">
                            <table width="95%" border="1" cellpadding="2" cellspacing="1"
                                   style="table-layout:fixed;font-size:18px;">
                                <c:forEach items="${rankList}" var="r" varStatus="status">
                                <tr>
                                    <td>
                                            ${r.rangkingImg}
                                        <ul style="display: inline-block;width: 600px;margin-top: 10px;">
                                            <li>${r.rangkingName}</li>
                                            <li>
                                                <div style="margin-top: 20px;">
                                                    ${r.rangkingDoc}
                                                </div>
                                            </li>
                                            <li>

                                                <div class="rating_self clearfix" typeof="v:Rating">
                                                    <strong class="ll rating_num" property="v:average" >${r.rangkingScore}</strong>
                                                    <span property="v:best" content="10.0"></span>
                                                    <div class="rating_right ">

                                                        <div class="ll bigstar bigstar${r.starScore}"></div>
                                                        <div class="rating_sum">
                                                            <a href="collections" class="rating_people"><span property="v:votes">${r.rangkingRemark}</span></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                        </ul>

                                        <hr style="height:1px;border:none;border-top:1px dashed #F8F8FF;"/>

                                    </td>
                                </tr>
                                </c:forEach>


                            </table>

                            <center>
                                <c:forEach begin="1" end="2" step="1" var="p">
                                    <a style="font-size: large ;color: white"  href="${ctx}/rank/list?page=${p}">${p}</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                </c:forEach>
                            </center>

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
                                <li><a href="#">Mad Max: Fury Road</a><span><img src="images/hot.png"/></span></li>
                                <li><a href="#">The Age of Adaline</a><span><img src="images/hot.png"/></span></li>
                                <li><a href="#">Pound of Flesh</a><span><img src="images/hot.png"/></span></li>
                                <li><a href="#">Bloodbath Island</a><span><img src="images/hot.png"/></span></li>
                                <li><a href="#">Pound of Flesh</a><span><img src="images/hot.png"/></span></li>
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
                                <a href="#"><img src="images/1.jpg"/></a>
                                <div class="wrapper">
                                    <a href="#"><h6>A Blue Morning</h6></a>
                                    <p>March 1, 2015</p>
                                    <a href="#"><img src="images/star.png"/></a>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="images/2.jpg"/></a>
                                <div class="wrapper">
                                    <a href="#"><h6>A Blue Morning</h6></a>
                                    <p>March 1, 2015</p>
                                    <a href="#"><img src="images/star.png"/></a>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="images/3.jpg"/></a>
                                <div class="wrapper">
                                    <a href="#"><h6>A Blue Morning</h6></a>
                                    <p>March 1, 2015</p>
                                    <a href="#"><img src="images/star.png"/></a>
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