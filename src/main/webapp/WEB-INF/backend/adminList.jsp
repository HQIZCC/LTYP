<%--
  Created by IntelliJ IDEA.
  User: 胡佳豪
  Date: 2017/10/20
  Time: 10:06
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
    <title>管理员列表</title>
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
                <ul class="am-icon-users"> 管理员管理</ul>

                <dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">管理员列表</a></dl>

            </div>
            <form class="am-form am-g">
                <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped"
                       style="text-align: center">
                    <thead>
                    <tr class="am-success">
                        <th class="table-username" style="text-align: center">用户名</th>
                        <th class="table-name" style="text-align: center">姓名</th>
                        <th class="table-type" style="text-align: center">性别</th>
                        <th class="table-type" style="text-align: center">年龄</th>
                        <th class="table-type" style="text-align: center">邮箱</th>
                        <th class="table-type" style="text-align: center">手机号</th>
                        <th width="130px" class="table-set" style="text-align: center">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${adminList}" var="a" varStatus="status">
                        <tr>
                            <td>${a.username}</td>
                            <td>${a.userInfo.name}</td>
                            <td>${a.userInfo.gender}</td>
                            <td>${a.userInfo.age}</td>
                            <td>${a.userInfo.email}</td>
                            <td>${a.userInfo.phone}</td>
                            <td>
                                <c:if test="${a.ban==0}"><a
                                        href="${ctx}/backend/updateAdminBan?userId=${a.userId}&ban=1"
                                        class="am-btn am-btn-default"><span class="am-icon-lock"></span> 封 号</a></c:if>
                                <c:if test="${a.ban==1}"><a
                                        href="${ctx}/backend/updateAdmin9Ban?userId=${a.userId}&ban=0"
                                        class="am-btn am-btn-default"><span class="am-icon-unlock"></span> 解
                                    封</a></c:if>
                                &nbsp;&nbsp;&nbsp;&nbsp;<a href="${ctx}/backend/deleteAdmin?userId=${a.userId}"
                                                           class="am-btn am-btn-default"><span
                                    class="am-icon-trash"></span> 删 除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <div class="am-btn-group am-btn-group-xs">
                    <a href="${ctx}/backend/toAddAdmin" class="am-btn am-btn-default"><span class="am-icon-plus"></span>
                        新 增</a>
                </div>

                <ul class="am-pagination am-fr">
                    <li class="am-disabled"><a href="#">«</a></li>
                    <li class="am-active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">»</a></li>
                </ul>

                <hr/>
                <p style="color:red;">注：各大站内管理员删除数据时请谨慎操作</p>
            </form>
            <jsp:include page="backfoot.jsp"/>
        </div>

    </div>


</div>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/amazeui.min.js"></script>
<!--<![endif]-->


</body>
</html>