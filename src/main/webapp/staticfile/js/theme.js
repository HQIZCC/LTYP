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
            markPoint:{
                min: 'dataMin',
                max: 'dataMax'
            }

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
