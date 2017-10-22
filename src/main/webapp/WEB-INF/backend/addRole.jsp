
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="${ctx}/staticfile/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${ctx}/staticfile/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="${ctx}/staticfile/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${ctx}/staticfile/assets/css/admin.css">
    <script src="${ctx}/staticfile/assets/js/jquery.min.js"></script>
    <script src="${ctx}/staticfile/assets/js/app.js"></script>
    <script type="text/javascript" src="${ctx}/staticfile/assets/datepicker/WdatePicker.js"></script>
</head>
<body>
<jsp:include page="backheader.jsp"/>

<div class="am-cf admin-main">

    <jsp:include page="backleft.jsp"/>





<div class=" admin-content">

    <div class="daohang">

    </div>

    <div class="admin-biaogelist">

        <div class="listbiaoti am-cf">
            <ul class="am-icon-flag on"> 角色管理</ul>

            <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="#">角色添加</a></dl>

        </div>
        <div class="fbneirong" style="margin: auto;text-align: center"  >

            <form class="am-form" action="tosave"  method="post">
                <div class="am-form-group am-cf">
                    <div class="zuo">角色ID：</div>
                    <div class="you" name="roleId">
                        <input name="roleId" type="text" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入角色ID">
                    </div>
                </div>


                <div class="am-form-group am-cf">
                    <div style="font-size: 13px " class="zuo" >角色名称：</div>
                    <div class="you" >
                        <input name="roleName" type="text" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入导演名称">
                    </div>
                    </label>

                </div>
                <input type="submit" value="提 交"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="重 置"/>



            </form>
        </div>


        <jsp:include page="backfoot.jsp"/>




    </div>

</div>

</div>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${ctx}/staticfile/assets/js/polyfill/rem.min.js"></script>
<script src="${ctx}/staticfile/assets/js/polyfill/respond.min.js"></script>
<script src="${ctx}/staticfile/assets/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${ctx}/staticfile/assets/js/amazeui.min.js"></script>
<!--<![endif]-->



</body>
</html>
