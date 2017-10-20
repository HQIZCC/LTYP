<%@ page language="java" pageEncoding="utf-8"%>
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
                        <input name="search" type="text" size="40" placeholder="Search..."/>
					  <input type="submit" value="提 交">
					</form>
				</div>
			</div>
		</div>
		<div class="row">
			<div id="menu">
				<nav>
					<div class="wrap-nav">
					   <ul>
						 <li class="active"><a href="/movie/showmovie">首页</a></li>
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
	</div>
</header>