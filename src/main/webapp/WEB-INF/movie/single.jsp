<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>zMovie</title>
	<meta name="description" content="Free Responsive Html5 Css3 Templates | zerotheme.com">
	<meta name="author" content="www.zerotheme.com">
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
  	<link rel="stylesheet" href="${ctx}/staticfile/css/zerogrid.css">
	<link rel="stylesheet" href="${ctx}/staticfile/css/style.css">
	<link rel="stylesheet" href="${ctx}/staticfile/css/responsive.css">
	
	
	<script src="${ctx}/staticfile/lib/jquery-1.7.2.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
  			commClick();
		});

		function commClick(){
			var a = 1;
			if(a==1){
				$(".commForm").toggle();
			}else{
				
			}
			
		}

</script>
    
</head>
<body>
<%@include file="../head.jsp" %>
<div class="wrap-body">

 

<!--////////////////////////////////////Container-->
<section id="container">
	<div class="wrap-container zerogrid">
		<div id="main-content" class="col-2-3">
			<div class="wrap-content">
				<article>
					<div class="art-header">
						<div class="col-1-3">
							<div class="wrap-col">
								<img src="${ctx}/${movieInfo.poster}" />
							</div>
						</div>
						<div class="col-2-3">
							<div class="wrap-col">
								<ul>
									<li><p>电影名称:${movieInfo.movieName}</p></li>
									<li><p>导演: ${movieInfo.director}</p></li>
									<li><p>演员: ${movieInfo.actor}</p></li>
									<li><p>国家: ${movieInfo.country}</p></li>
									<li><p>上映日期: ${movieInfo.showTime}</p></li>
                                    <li><p>评分: ${movieInfo.avgscore}</p></li>
                                    <li><p>时长: ${movieInfo.playtime}</p></li>
                                    <li><a class="button bt1" onclick="commClick()" href="#comment">评论</a></li>
								</ul>
							</div>
						</div>
						<div class="clear"></div>
					</div>
					<div class="art-content">
						<h3>剧情简介:</h3>
                        <img src="${ctx}/${movieimg.imageUrl}" />
                        ${movieInfo.description}
						<div class="clear"></div>
					</div>
				</article>
				<div class="widget wid-related">
					<div class="wid-header">
						<h5>影评:</h5>
					</div>
					<div class="wid-content">
						<table width="95%" border="1" cellpadding="2" cellspacing="1" style="table-layout:fixed;font-size:18px;">   
						<c:forEach items="${commentList}" var="c">
						<tr>
							<td>
								<!-- 用户 -->
								评价时间:<fmt:formatDate value="${c.createTime}" pattern="yyyy-MM-dd"/> 评价人: ${c.user.username} 评价:
								<br/>
								<!-- 影评内容 -->
								${c.commDetail}
								<br/>
								<button type="submit" value="good" style="margin-left:680px">点赞(5)</button>
								<hr style="height:1px;border:none;border-top:1px dashed #F8F8FF;"/>
							</td>
						</tr>
                        </c:forEach>


						</table>
                        <button class="comm" id="comment" onclick="commClick()">评论</button>

						
						
						<div class="commForm">
						<form action="/movie/commitComment" target="_self">
							<input type="hidden" name="userId" value="${user.userId}">
							<input type="hidden" name="movieId" value="${movieInfo.movieId}">
							<label for="comment">用户评论:</label>
							<textarea name="commDetail" style="width: 600px; height: 80px" placeholder="您对此电影有什么看法呢?小影期待您的评论"></textarea>
							<button type="submit">确定</button>
						</form>
						
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="sidebar" class="col-1-3">
			<div class="wrap-sidebar">
				<!---- Start Widget ---->
				<div class="widget wid-new-updates">
					<div class="wid-header">
						<h5>Hot Updates !</h5>
					</div>
					<div class="wid-content">
						<ul>
						<li><a href="#">Mad Max: Fury Road</a><span><img src="${ctx}/staticfile/images/hot.png" /></span></li>
						<li><a href="#">The Age of Adaline</a><span><img src="${ctx}/staticfile/images/hot.png" /></span></li>
						<li><a href="#">Pound of Flesh</a><span><img src="${ctx}/staticfile/images/hot.png" /></span></li>
						<li><a href="#">Bloodbath Island</a><span><img src="${ctx}/staticfile/images/hot.png" /></span></li>
						<li><a href="#">Pound of Flesh</a><span><img src="${ctx}/staticfile/images/hot.png" /></span></li>
						</ul>
					</div>
				</div>
				<!---- Start Widget ---->
				<div class="widget wid-tag">
					<div class="wid-header">
						<h5>Tags</h5>
					</div>
					<div class="wid-content">
						<ul>
						<li><a href="#">animals</a></li>
						<li><a href="#">ssdad</a></li>
						<li><a href="#">ss</a></li>
						<li><a href="#">asdas</a></li>
						<li><a href="#">asdsals</a></li>
						<li><a href="#">dasdas</a></li>
						<li><a href="#">animals</a></li>
						<li><a href="#">aasdasls</a></li>
						</ul>
					</div>
				</div>
				<!---- Start Widget ---->
				<div class="widget wid-post">
					<div class="wid-header">
						<h5>Today's movies</h5>
					</div>
					<div class="wid-content">
						<div class="post">
							<a href="#"><img src="${ctx}/staticfile/images/1.jpg"/></a>
							<div class="wrapper">
							  <a href="#"><h6>A Blue Morning</h6></a>
							  <p>March 1, 2015</p>
							  <a href="#"><img src="${ctx}/staticfile/images/star.png" /></a>
							</div>
						</div>
						<div class="post">
							<a href="#"><img src="${ctx}/staticfile/images/2.jpg"/></a>
							<div class="wrapper">
							 <a href="#"><h6>A Blue Morning</h6></a>
							  <p>March 1, 2015</p>
							  <a href="#"><img src="${ctx}/staticfile/images/star.png" /></a>
							</div>
						</div>
						<div class="post">
							<a href="#"><img src="${ctx}/staticfile/images/3.jpg"/></a>
							<div class="wrapper">
							 <a href="#"><h6>A Blue Morning</h6></a>
							  <p>March 1, 2015</p>
							  <a href="#"><img src="${ctx}/staticfile/images/star.png" /></a>
							</div>
						</div>
					</div>
				</div>
				<!---- Start Widget ---->

			</div>
		</div>
	</div>
</section> 


</div>

</body>
</html>