<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/21
  Time: 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="sidebar" class="col-1-3">
    <div class="wrap-sidebar">
        <!---- Start Widget ---->
        <div class="widget wid-new-updates">
            <div class="wid-header">
                <h5>热门推荐!</h5>
            </div>
            <div class="wid-content">
                <ul>
                    <c:forEach items="${LinksDate}" var="p" step="1">
                        <li>
                                 <span>
                                     ${p}
                                   <img src="${ctx}/staticfile/images/hot.png"/>    </span>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <!---- Start Widget ---->
        <div class="widget wid-tag">
            <div class="wid-header">
                <h5>最近搜索</h5>
            </div>
            <div class="wid-content">
                <ul>
                    <c:forEach items="${map}" var="item">
                        <c:if test="${user_login==item.key}">
                            <c:forEach items="${item.value}" var="search">
                                <li><a href="/movie/search?search=${search}">${search}</a></li>
                            </c:forEach>
                        </c:if>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <!---- Start Widget ---->


        <!---- Start Widget ---->
        <div class="widget wid-last-updates">
            <div class="wid-header">
                <h5>最近 更新</h5>
            </div>
            <c:forEach items="${newUpdate}" var="u">
                <div class="wid-content">
                    <div class="post">
                        <a href="/movie/single?movieId=${u.movieId}"><img src="${ctx}/${u.poster}"/></a>
                        <br>
                        <a href="/movie/single?movieId=${u.movieId}"><h6>${u.movieName}</h6></a>
                        <p>上映时间:${u.showTime}</p>
                            <%--<p>演员:${u.actor}</p>--%>
                        <p>国家:${u.country}</p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
