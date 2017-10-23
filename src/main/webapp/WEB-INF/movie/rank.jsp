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
            <%@include file="../right.jsp" %>
        </div>
    </section>


</div>

</body>
</html>