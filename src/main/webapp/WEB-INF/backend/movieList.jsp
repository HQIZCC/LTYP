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
    <title>电影列表页面</title>
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
    <script src="${ctx}/staticfile/js/jquery.min.js"></script>
</head>



<body>
<header class="am-topbar admin-header">
    <div class="am-topbar-brand"><img src="${ctx}/staticfile/assets/i/logo.png"></div>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
        <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">

            <li class="am-dropdown tognzhi" data-am-dropdown>
                <button class="am-btn am-btn-primary am-dropdown-toggle am-btn-xs am-radius am-icon-bell-o"
                        data-am-dropdown-toggle> 全部功能<span class="am-badge am-badge-danger am-round">6</span></button>
                <ul class="am-dropdown-content">


                    <li class="am-dropdown-header">所有的功能都在这里</li>


                    <li><a href="#">添加新电影 <span class="am-badge am-badge-danger am-round">556</span></a></li>
                    <li><a href="#">电影列表 <span class="am-badge am-badge-danger am-round">69</span></a></li>
                    <li><a href="#">电影分类</a></li>
                    <li><a href="#">用户列表</a></li>


                </ul>
            </li>


            <li class="kuanjie">

                <a href="${ctx}/backend/movieList">电影列表</a>
                <a href="用户列表.html">用户列表</a>
            </li>

            <li class="soso">

                <p>

                    <select data-am-selected="{btnWidth: 70, btnSize: 'sm', btnStyle: 'default'}">
                        <option value="o">电影</option>
                        <option value="o">用户</option>
                    </select>

                </p>

                <p class="ycfg"><input type="text" class="am-form-field am-input-sm" placeholder="搜索全网"/></p>
                <p>
                    <button class="am-btn am-btn-xs am-btn-default am-xiao"><i class="am-icon-search"></i></button>
                </p>
            </li>


            <li class="am-hide-sm-only" style="float: right;"><a href="javascript:;" id="admin-fullscreen"><span
                    class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
        </ul>
    </div>
</header>

<div class="am-cf admin-main">

    <jsp:include page="backleft.jsp"/>

    <div class=" admin-content">

        <div class="daohang">
        </div>


        <div class="admin-biaogelist">

            <div class="listbiaoti am-cf">
                <ul class="am-icon-flag on"> 栏目名称</ul>

                <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="${ctx}/backend/movieList">电影列表</a>
                </dl>

                <dl>
                    <button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus"><a href="${ctx}/backend/addMovie">添加新电影</a></button>
                </dl>


            </div>

            <div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
                <ul>
                    <li>
                        <div class="am-btn-group am-btn-group-xs">
                            <select data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
                                <option value="b">电影分类</option>
                                <option value="o">电影评分</option>
                            </select>
                        </div>
                    </li>
                    <li>
                        <div class="am-btn-group am-btn-group-xs">
                            <select data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
                                <option value="b">产品分类</option>
                                <option value="o">下架</option>
                            </select>
                        </div>
                    </li>
                    <li style="margin-right: 0;">
                        <span class="tubiao am-icon-calendar"></span>
                        <input type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar"
                               placeholder="上映日期" data-am-datepicker="{theme: 'success',}" readonly/>
                    </li>


                    <li style="margin-left: -10px;">
                        <div class="am-btn-group am-btn-group-xs">
                            <select data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
                                <option value="b">电影分类</option>
                                <option value="o">下架</option>
                            </select>
                        </div>
                    </li>
                    <li><input type="text" class="am-form-field am-input-sm am-input-xm" placeholder="关键词搜索"/></li>
                    <li>
                        <button type="button" class="am-btn am-radius am-btn-xs am-btn-success"
                                style="margin-top: -1px;">搜索
                        </button>
                    </li>
                </ul>
            </div>


            <form class="am-form am-g">
                <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
                    <thead>
                    <tr class="am-success">
                        <th class="table-check"><input type="checkbox" name="selectId" onclick="checkAll('movieId',this)"/></th>
                        <th class="table-id">排序</th>
                        <th class="table-title">电影名称</th>
                        <th class="table-author am-hide-sm-only">上映时间</th>
                        <th class="table-date am-hide-sm-only">所属国家</th>
                        <th width="163px" class="table-set">电影评分</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${movieList}" var="m" varStatus="status">
                        <tr>
                            <td><input type="checkbox" name="movieId" value="${m.movieId}"/></td>
                            <td>${status.index+1}</td>
                            <td>${m.movieName}</td>
                            <td>${m.showTime}</td>
                            <td class="am-hide-sm-only">${m.country}</td>
                            <td class="am-hide-sm-only">${m.avgscore}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <div class="am-btn-group am-btn-group-xs">
                    <a href="#" class="am-btn am-btn-default" onclick="formSubmit('toview','_self');this.blur();"><span class="am-icon-plus"></span> 查看</a>
                    <a href="#" class="am-btn am-btn-default"
                       onclick="formSubmit('toupdate','_self');this.blur();"><span class="am-icon-plus"></span> 修改</a>
                    <a href="#" class="am-btn am-btn-default"
                       onclick="formSubmit('todelete','_self');this.blur();"><span class="am-icon-plus"></span> 删除</a>

                </div>

                <ul class="am-pagination am-fr">
                    <c:forEach begin="1" end="${allpages}" step="1" var="p">

                        <li><a href="${ctx}/backend/movieList?showpage=${p}">${p}</a></li>

                    </c:forEach>
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
<script src="${ctx}/staticfile/assets/js/polyfill/rem.min.js"></script>
<script src="${ctx}/staticfile/assets/js/polyfill/respond.min.js"></script>
<script src="${ctx}/staticfile/assets/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${ctx}/staticfile/assets/js/amazeui.min.js"></script>
<!--<![endif]-->


</body>
</html>
