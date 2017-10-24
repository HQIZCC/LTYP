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
    <title>乐图影评后台管理首页</title>
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

    <%--<script src="${ctx}/staticfile/assets/js/jquery.min.js"></script>--%>
    <script src="${ctx}/staticfile/assets/js/app.js"></script>

    <script src="${ctx}/staticfile/js/jquery-1.9.1.min.js"></script>
    <script src="${ctx}/staticfile/js/echarts.js"></script>

    <script src="${ctx}/staticfile/js/theme.js"></script>


    <script>
        var chartOutChar = null;

        var option1 = {
            title: {

                text: "2017电影不同电影类型的票房",

                x: 'center'
            },
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                x: 'center',
                y: 'bottom',
                data: ['剧情', '战争', '动画', '爱情', '科幻', '动作', '犯罪', '恐怖', '励志']
            },
            toolbox: {
                show: true,
                feature: {
                    mark: {show: true},
                    dataView: {show: true, readOnly: false},
                    magicType: {
                        show: true,
                        type: ['pie', 'funnel']
                    },
                    restore: {show: true},
                    saveAsImage: {show: true}
                }
            },
            calculable: true,
            series: [

                {
                    name: '面积模式',
                    type: 'pie',
                    radius: [30, 110],
                    center: ['50%', '50%'],
                    roseType: 'area',
                    data: [
                        <c:forEach items="${map}" var="m">
                        {value: ${m.value}, name: '${m.key}'},

                        </c:forEach>
                    ]
                }
            ]
        };


        //载入图表
        $(function () {
            chartOutChar = echarts.init(document.getElementById('showChart'));
            chartOutChar.setOption(option1);

        });
    </script>

</head>


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
                    <dt class="qs"><i class="am-icon-tags"></i></dt>
                    <dd>${movieNum}</dd>
                    <dd class="f12">电影数量</dd>
                </dl>
                <dl data-am-scrollspy="{animation: 'slide-right', delay: 300}">
                    <dt class="cs"><i class="am-icon-users"></i></dt>
                    <dd>${userNum}</dd>
                    <dd class="f12">用户人数</dd>
                </dl>
                <dl data-am-scrollspy="{animation: 'slide-right', delay: 600}">
                    <dt class="hs"><i class="am-icon-film"></i></dt>
                    <dd>${movieTypeNum}</dd>
                    <dd class="f12">电影分类</dd>
                </dl>
            </div>
            <div class="admin-biaoge">
                <div class="xinxitj">今日热评</div>


                <div class="row" style="margin-top: 100px">
                    <div id="showChart" style="width: 100%; height: 400px; margin-left: 0px;
                             margin-right: 6px; margin-bottom: 8px; float: left; overflow: hidden;">

                    </div>
                </div>


                <div id="main" style="width: 100%;height:400px;"></div>

                <script type="text/javascript">
                    var titleData = [];
                    var subtextData = [];
                    var legendData = [];
                    var xAxisDate = [];
                    var seriesData1 = [];
                    var seriesData2 = [];
                    $(document).ready(function () {
                        var myChart = echarts.init(document.getElementById('main'));
// 指定图表的配置项和数据
                        var option = {
                            title: {
                                // text: '2017年10月21日内地日票房分析',

                                text: titleData,

                                // subtext: "数据来源：爬取时光网",

                                subtext: subtextData,

                                x: 'center'
                            },
                            toolbox: {
                                feature: {
                                    dataView: {show: true, readOnly: false},
                                    magicType: {show: true, type: ['line', 'bar']},
                                    restore: {show: true},
                                    saveAsImage: {show: true}
                                }
                            },
                            tooltip: {
                                trigger: 'axis',
                                axisPointer: {
                                    type: 'line'
                                }
                            },
                            legend: {
                                left: 'left',
                                data: ['累计票房(元)', '日票房(元)']
                            },
                            xAxis: {

                                data: xAxisDate,
                                min: 'dataMin',
                                max: 'dataMax'
                            },
                            yAxis: {},
                            series: [{
                                name: '日票房(亿)',
                                type: 'bar',
                                data: seriesData1,
                                itemStyle: {
                                    normal: {
                                        color: '#81b6b2',
                                        lineStyle: {
                                            color: '#81b6b2'
                                        }
                                    }
                                }
                            }, {
                                name: '累计票房(亿)',
                                type: 'line',
                                data: seriesData2,
                                itemStyle: {
                                    normal: {
                                        color: '#e44f2f',
                                        lineStyle: {
                                            color: '#e44f2f'
                                        }
                                    }
                                }
                            }]
                        };
                        // 使用刚指定的配置项和数据显示图表。

                        myChart.setOption(option);
                    });

                    $.ajax({
                        type: "get",
                        url: "/backend/getEcherts",
                        contentType: "application/json;charset=utf-8",
                        dataType: "json",
                        async: false,

                        success: function (Eachartdata) {

                            //主题
                            titleData = Eachartdata.titleData;
                            subtextData = Eachartdata.subtextData;
                            legendData = Eachartdata.legendData;
                            xAxisDate = Eachartdata.xAxisDate;
                            seriesData1 = Eachartdata.seriesData1;
                            seriesData2 = Eachartdata.seriesData2;

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            /*弹出jqXHR对象的信息*/
                            alert(jqXHR.responseText);
                            alert(jqXHR.status);
                            alert(jqXHR.readyState);
                            alert(jqXHR.statusText);
                            /*弹出其他两个参数的信息*/
                            alert(textStatus);
                            alert(errorThrown);
                        }
                    });


                </script>

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
                            <li>今日工作安排</li>
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
                                    <td align="center">2</td>
                                    <td>工作进度名称</td>
                                    <td align="center"><a href="#">10%</a></td>
                                </tr>
                                <tr>
                                    <td align="center">3</td>
                                    <td>工作进度名称</td>
                                    <td align="center"><a href="#">10%</a></td>
                                </tr>

                                <tr>
                                    <td align="center">4</td>
                                    <td>工作进度名称</td>
                                    <td align="center"><a href="#">10%</a></td>
                                </tr>

                                <tr>
                                    <td align="center">5</td>
                                    <td>工作进度名称</td>
                                    <td align="center"><a href="#">10%</a></td>
                                </tr>

                                <tr>
                                    <td align="center">6</td>
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
                <%--<script type="text/javascript">jQuery(".slideTxtBox").slide();</script>--%>


            </div>

            <div class="foods">
                <ul>版权所有@2015 .模板收集自 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - More
                    Templates<a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></ul>
                <dl><a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a></dl>


            </div>


        </div>

    </div>


</div>

<jsp:include page="backfoot.jsp"/>


</body>
</html>
