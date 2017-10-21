<%@ page language="java" pageEncoding="utf-8"%>
<style>
    #caidan {
        height: 25px;
        line-height: 25px;
        padding: 0px;
        background: black;
    }
</style>
<header>
	<div class="top-bar">
		<div class="wrap-top zerogrid">
			<div class="row">
				<div class="col-1-2">
					<div class="wrap-col">
						<ul>
							<li class="mail">
                                <c:if test="${ empty sessionScope.user_login }">
                                    <a style="color: white" href="${ ctx }/login/signin">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                                    <a style="color: white" href="${ ctx }/login/signup">注册</a>
                                </c:if>
                                <c:if test="${ !(empty sessionScope.user_login) }">
                                    欢迎 ${ user_login.username } 回来,&nbsp;
                                    <a href="${ ctx }/login/logout">退出</a>
                                </c:if>
                            </li>
							 <%--<li class="phone"><a href="#"><p>退出</p></a> </li>  --%>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="wrap-header zerogrid">
		<div class="row">
			<div class="col-1-2">
				<div class="wrap-col">
					<div class="logo"><a href="#"><img src="${ctx}/staticfile/images/logo.png"/></a></div>
				</div>
			</div>
			<div class="col-1-2">
				<div class="wrap-col f-right">
                    <form method="get" action="/movie/search" id="search">
                        <input name="search" type="text" size="40" placeholder="SearchEverything..."/>
                        <input type="submit" value="搜索全部">
					</form>
				</div>
			</div>
		</div>
		<div class="row">
			<div id="menu">
				<nav>
					<div class="wrap-nav">
					   <ul>
                           <li><a href="/movie/showmovie">首页</a></li>
						 <li><a href="single.html"> </a></li>
						 <li><a href="single.html">社区</a></li>
						 <li><a href="single.html"> </a></li>
						 <li><a href="single.html">排行榜</a></li>
						 <li><a href="single.html"> </a></li>
						 <li><a href="single.html">关于我们</a></li>
						 <li><a href="contact.html"> </a></li>
					   </ul>
					</div>
                </nav>
            </div>
		</div>
        <div class="row">
            <p id="caidan" class="active">
            <div class="wrap-nav">
                <a href="/movie/typeSearch?typeId=1" target="_self">剧情</a>
                <a href="/movie/typeSearch?typeId=10" target="_self">战争</a>
                <a href="/movie/typeSearch?typeId=2" target="_self">动画</a>
                <a href="/movie/typeSearch?typeId=3" target="_self">爱情</a>
                <a href="/movie/typeSearch?typeId=4" target="_self">科幻</a>
                <a href="/movie/typeSearch?typeId=5" target="_self">动作</a>
                <a href="/movie/typeSearch?typeId=6" target="_self">犯罪</a>
                <a href="/movie/typeSearch?typeId=7" target="_self">恐怖</a>
                <a href="/movie/typeSearch?typeId=8" target="_self">励志</a>
                <a href="/movie/typeSearch?typeId=9" target="_self">喜剧</a>
            </div>
            </p>
        </div>
	</div>
</header>