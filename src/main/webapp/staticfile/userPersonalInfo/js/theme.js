var myChart = null;

// 指定图表的配置项和数据
var option = {
    title:{
        text: '2017年10月21日内地日票房分析',
        subtext: '数据来源：爬取时光网',
        x:'center'
   }, 
    toolbox: {
        feature: {
            dataView: {show: true, readOnly: false},
            magicType: {show: true, type: ['line', 'bar']},
            restore: {show: true},
            saveAsImage: {show: true}
        }
    },
    tooltip:{
        trigger: 'axis',
        axisPointer: {
            type: 'line' 
        }
    },
    legend: { 
        left: 'left',
        data: ['累计票房(元)','日票房(元)']  
    },
    xAxis: {
        data: ["电影1", "电影2", "电影3", "电影4", "电影5", "电影6", "电影7", "电影8", "电影9","电影10"],
          min: 'dataMin',
          max: 'dataMax'
    },
    yAxis: {},
    series: [{ 
        name: '日票房(元)',
        type: 'bar',
        data: [5, 20, 36, 10, 10, 20,30,50,60,90]
    },{ 
        name: '累计票房(元)',
        type: 'line',
        data: [7, 30, 50, 11, 40, 80,120,150,236,230]
    }],
     itemStyle : {
         normal : {
            color :['#ff8f22'],
                        //设置折线的颜色
               lineStyle : {
                  color : '#ff8f22'
                }, 
             }
         } 

};
    
    

// 使用刚指定的配置项和数据显示图表。


$(function () {
    myChart = echarts.init(document.getElementById('main'));
    myChart.setOption(option);

});
 $(document).ready(function(){
  $.ajax({
          type:"post",
          url:"getStatis",
          contentType:"application/json;charset=utf-8",
          dataType:"json",
          async: false,
          success:function(data) {
                    //主题
                    //
                    allSum=data.allSum;
                    overPay=data.overPay;
                    noPay=data.noPay;
                    yesPay=data.yesPay;

                },
                error:function()
                {
                    //出错时回调该函数

                    //alert("error");
                }
            });

        });