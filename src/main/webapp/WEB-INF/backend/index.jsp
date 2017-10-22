<%--
  Created by IntelliJ IDEA.
  User: HQIZCC
  Date: 2017/10/19
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>乐途后台管理首页</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="${ctx}/staticfile/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${ctx}/staticfile/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="${ctx}/staticfile/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${ctx}/staticfile/assets/css/admin.css">
    <script src="${ctx}/staticfile/assets/js/jquery.min.js"></script>
    <script src="${ctx}/staticfile/assets/js/app.js"></script>

    <script src="${ctx}/staticfile/userPersonalInfo/js/echarts.js"></script>
    <script src="${ctx}/staticfile/userPersonalInfo/js/showChart.js"></script>
    <script src="${ctx}/staticfile/userPersonalInfo/js/theme.js"></script>
    <script src="${ctx}/staticfile/js/echarts.js"></script>
    <script src="${ctx}/staticfile/js/showChart.js"></script>
    <script src="${ctx}/staticfile/js/theme.js"></script>
</head>

   




<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p>
<![endif]-->
</head>

<body>

<jsp:include page="backheader.jsp"/>


<div class="am-cf admin-main">

    <jsp:include page="backleft.jsp"/>

        <div class=" admin-content">

            <div class="daohang">
                <ul>
                    <li>

                        <button type="button" class="am-btn am-btn-default am-radius am-btn-xs"/>
                        首页

                    </li>
                    <li>
                        <button type="button" class="am-btn am-btn-default am-radius am-btn-xs">帮助中心<a
                                href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a>
                        </button>
                    </li>
                    <li>
                        <button type="button" class="am-btn am-btn-default am-radius am-btn-xs">奖金管理<a
                                href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a>
                        </button>
                    </li>
                    <li>
                        <button type="button" class="am-btn am-btn-default am-radius am-btn-xs">产品管理<a
                                href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a>
                        </button>
                    </li>


                </ul>


            </div>


            <div class="admin">


                <div class="admin-index">
                    <dl data-am-scrollspy="{animation: 'slide-right', delay: 100}">
                        <dt class="qs"><i class="am-icon-users"></i></dt>
                        <dd>${movieNum}</dd>
                        <dd class="f12">电影数量</dd>
                    </dl>
                    <dl data-am-scrollspy="{animation: 'slide-right', delay: 300}">
                        <dt class="cs"><i class="am-icon-area-chart"></i></dt>
                        <dd>${userNum}</dd>
                        <dd class="f12">用户人数</dd>
                    </dl>
                    <dl data-am-scrollspy="{animation: 'slide-right', delay: 600}">
                        <dt class="hs"><i class="am-icon-shopping-cart"></i></dt>
                        <dd>${movieTypeNum}</dd>
                        <dd class="f12">电影分类</dd>
                    </dl>
                </div>
                <div class="admin-biaoge">
                    <div class="xinxitj">今日热评</div>

                    <div class="row" style="margin-top: -100px">

                        <div id="showChart"
                             style="width: 100%; height: 600px; margin-left: 0px; margin-right: 6px; margin-bottom: 8px; float: left; overflow: hidden;"></div>


                    </div>

                    <div id="main" style="width: 100%;height:300px;"></div>

                </div>
                <div class="shuju">
                    <div class="shujuone">
                        <dl>
                            <dt>全网电影总量： ${movieNum}</dt>
                            <dt>全网电影种类： ${movieTypeNum}</dt>
                            <dt>全网评论总量： 10000</dt>
                        </dl>
                        <ul>
                            <h2>100</h2>
                            <li>全网更新评论量</li>
                        </ul>
                    </div>
                    <div class="shujutow">
                        <dl>
                            <dt>全网用户： ${userNum}</dt>
                        </dl>
                        <ul>
                            <h2>10</h2>
                            <li>新注册用户</li>
                        </ul>
                    </div>
                    <div class="slideTxtBox">
                        <div class="hd">
                            <ul>
                                <li>其他信息</li>
                                <li>工作进度表</li>
                            </ul>
                        </div>
                        <div class="bd">
                            <ul>
                                <table width="100%" class="am-table">
                                    <tbody>
                                    <tr>
                                        <td width="7%" align="center">1</td>
                                        <td width="83%">工作进度名称</td>
                                        <td width="10%" align="center"><a href="#">10%</a></td>
                                    </tr>
                                    <tr>
                                        <td align="center">1</td>
                                        <td>工作进度名称</td>
                                        <td align="center"><a href="#">10%</a></td>
                                    </tr>
                                    <tr>
                                        <td align="center">1</td>
                                        <td>工作进度名称</td>
                                        <td align="center"><a href="#">10%</a></td>
                                    </tr>
                                    <tr>
                                        <td align="center">1</td>
                                        <td>工作进度名称</td>
                                        <td align="center"><a href="#">10%</a></td>
                                    </tr>

                                    <tr>
                                        <td align="center">1</td>
                                        <td>工作进度名称</td>
                                        <td align="center"><a href="#">10%</a></td>
                                    </tr>

                                    <tr>
                                        <td align="center">1</td>
                                        <td>工作进度名称</td>
                                        <td align="center"><a href="#">10%</a></td>
                                    </tr>

                                    <tr>
                                        <td align="center">1</td>
                                        <td>工作进度名称</td>
                                        <td align="center"><a href="#">10%</a></td>
                                    </tr>


                                    </tbody>
                                </table>
                            </ul>
                            <ul>
                                <table class="am-table">
                                    <tbody>
                                    <tr>
                                        <td>普卡</td>
                                        <td>普卡</td>
                                        <td><a href="#">4534</a></td>
                                        <td>+20</td>
                                        <td> 4534</td>
                                    </tr>
                                    <tr>
                                        <td>银卡</td>
                                        <td>银卡</td>
                                        <td>4534</td>
                                        <td>+2</td>
                                        <td> 4534</td>
                                    </tr>
                                    <tr>
                                        <td>金卡</td>
                                        <td>金卡</td>
                                        <td>4534</td>
                                        <td>+10</td>
                                        <td> 4534</td>
                                    </tr>
                                    <tr>
                                        <td>钻卡</td>
                                        <td>钻卡</td>
                                        <td>4534</td>
                                        <td>+50</td>
                                        <td> 4534</td>
                                    </tr>
                                    <tr>
                                        <td>合计</td>
                                        <td>合计</td>
                                        <td>4534</td>
                                        <td>+50</td>
                                        <td> 4534</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </ul>
                        </div>
                    </div>
                    <script type="text/javascript">jQuery(".slideTxtBox").slide();</script>


                </div>
                <jsp:include page="backfoot.jsp"/>



            </div>

        </div>


    </div>


</body>
</html>
