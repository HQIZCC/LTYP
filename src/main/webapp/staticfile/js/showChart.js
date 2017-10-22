var chartOutChar = null;

var option1 = {
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        x: 'center',
        y: 'bottom',
        data: ['新闻', '论坛', '微信', '微博', '博客', '贴吧', '问答', '财经网站', '传统纸媒']
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
                {value: 10, name: '新闻'},
                {value: 40, name: '论坛'},
                {value: 15, name: '微信'},
                {value: 25, name: '微博'},
                {value: 20, name: '博客'},
                {value: 35, name: '贴吧'},
                {value: 30, name: '问答'},
                {value: 37, name: '财经网站'},
                {value: 28, name: '传统纸媒'}
            ]
        }
    ]
};


//载入图表
$(function () {
    chartOutChar = echarts.init(document.getElementById('showChart'));
    chartOutChar.setOption(option1);

});