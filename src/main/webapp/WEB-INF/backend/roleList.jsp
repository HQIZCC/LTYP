<%--
  Created by IntelliJ IDEA.
  User: HQIZCC
  Date: 2017/10/19
  Time: 14:19
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
    <title>角色列表</title>
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
                <ul class="am-icon-flag on"> 角色管理</ul>

                <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="#">角色列表</a>
                </dl>

            </div>

            <form class="am-form am-g" action="delete" method="post">
                <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
                    <thead>
                    <tr class="am-success">
                        <th class="table-id" style="width: 150px;text-align: center">角色ID</th>
                        <th class="table-title" style="text-align: center">角色名称</th>
                        <th class="table-title" style="text-align: center">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                 <c:forEach items="${roleList}" var="r" varStatus="status">
                        <tr>
                            <input type="hidden" name="roleId" value="${r.roleId}">
                            <td style="text-align: center">${r.roleId}</td>
                            <td style="text-align: center">${r.roleName}</td>
                            <td style="text-align: center">
                                <c:if test="${r.roleId>2}">
                                    <a href="${ctx}/role/delete?roleId=${r.roleId}"
                                       class="am-btn am-btn-default"><span
                                            class="am-icon-trash"></span> 删 除</a>
                                </c:if>
                            </td>

                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
                <div class="am-btn-group am-btn-group-xs">
                    <a href="${ctx}/role/addRole" class="am-btn am-btn-default"><span class="am-icon-plus"></span>
                        新 增</a>
                </div>
            </form>

                <hr/>
            <p style="color:red;">注：各大站内管理员删除数据时请谨慎操作</p>
            <jsp:include page="backfoot.jsp"/>

        </div>

    </div>


</div>



</body>
</html>
