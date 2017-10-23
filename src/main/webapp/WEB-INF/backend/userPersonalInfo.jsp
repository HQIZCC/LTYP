<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mini Two Theme - Free CSS Template</title>
<meta name="keywords" content="mini two, one page layout, web design, orange header, free templates, coda slider, JS, CSS, HTML" />
<meta name="description" content="Mini Two Theme is a free CSS template provided by templatemo.com" />
<link href="${ctx}/staticfile/userPersonalInfo/css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/staticfile/userPersonalInfo/css/coda-slider.css" type="text/css" charset="utf-8" />

<script src="${ctx}/staticfile/userPersonalInfo/js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="${ctx}/staticfile/userPersonalInfo/js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
<script src="${ctx}/staticfile/userPersonalInfo/js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>
<script src="${ctx}/staticfile/userPersonalInfo/js/jquery.serialScroll-1.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="${ctx}/staticfile/userPersonalInfo/js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
<script src="${ctx}/staticfile/userPersonalInfo/js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>
<style>

.txImg{
	position: absolute;
	right:-100px;
	top:0;
}

.txReturn{
    position: absolute;
    right:-130px;
    top:280px;
}
</style>
</head>
<body>

<div id="slider">
    <div id="templatemo_header_wrapper">
        <div id="templatemo_header">
            <div id="header"><h1><a href="#">Free CSS Template</a></h1></div>
        </div>
    </div>
    
    <div id="templatemo_main">
    	
        <div id="templatemo_content">
         
        	<div class="scroll">
        		<div class="scrollContainer">
              	
                    <div class="panel" id="home">
                          <h3>个人信息</h3>
                    	<div class="cleaner_h10"></div>
                        <div class="col_370 float_l" >
                            <div id="contact_form">
                                <form  name="contact" style="position:relative">
                        			
                                    <label for="author">真实姓名:</label>${userInfo.name}
            
                                    <div class="cleaner_h10"></div>
                                    <label for="email">年龄:</label>${userInfo.age}
                                    <div class="cleaner_h10"></div>
                                    
                                    <label for="text">性别:</label>${userInfo.gender}

                                    <div class="cleaner_h10"></div>
                                    
                                    <label for="text">邮箱:</label>${userInfo.email}

                                    <div class="cleaner_h10"></div>
                                    <label for="text">电话:</label>${userInfo.phone}

                                    <div class="cleaner_h10"></div>
                                    <label for="text">昵称:</label>${userInfo.nickname}

                                    <div class="cleaner_h10"></div>
                                    <label for="text">个性签名:</label>${userInfo.sign}

                                   
	                                <img src="${ctx}/staticfile/userPersonalInfo/images/gallery/ktr.jpg"
                                         class="txImg" style="width:100px;height:100px;border-radius:100%;overflow:hidden;"/>
                                    <label for="text" class="txReturn"> <a href="${ctx}/index">返回首页</a></label>
									
                            	</form>
                            </div>
                        </div>
                       <!--   <div class="col_220 float_r">   
                            <h3>Our Services</h3>
                            
                            <ul class="service_list">
                                <li><a href="#" class="service_one">Morbi luctus vitae cursus</a></li>
                                <li><a href="#" class="service_two">Pellentesq tris senectus</a></li>
                                <li><a href="#" class="service_three">Duis at commodo molestie</a></li>
                                <li><a href="#" class="service_four">In aliquet in libero</a></li> 
                                <li><a href="#" class="service_five">Maecenas ut pretium</a></li>   
                            </ul>
                        </div>   -->              
                    </div>


                    <!-- end of home -->


                    <%--<div class="panel" id="services">--%>
                    <%--<h2>Our Services</h2>--%>
                    <%--<div class="col_370 float_l">--%>
                    <%--<h3>Service Overview</h3>--%>
                    <%--<img src="images/templatemo_image_02.jpg" alt="Image 02" class="image_wrapper image_fr" />--%>
                    <%--<p><em>Etiam quis velit non eu lacinia mi tempor hendrerit quis eu augue.</em></p>--%>
                    <%--<p>Donec fringilla egestas ante, vel <a href="#">euismod</a> mi venenatis et. Ut molestie porta urna, vitae tempor tellus mollis at. Proin tincidunt luctus ipsum, quis volutpat neque iaculis sit amet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin a neque et <a href="#">felis suscipit</a> scelerisque a eget enim. Duis tincidunt ligula ac mi porta id luctus. Vestibulum sed ultrices mauris. Proin cursus interdum massa. Validate <a href="#" rel="nofollow"><strong>XHTML</strong></a> &amp; <a href="#" rel="nofollow"><strong>CSS</strong></a>.</p>--%>
                    <%--</div>--%>
                    <%--<div class="col_220 float_r">--%>
                    <%--<h3>Our Services</h3>--%>
                    <%--<ul class="service_list">--%>
                    <%--<li><a href="#" class="service_one">Morbi luctus vitae cursus</a></li>--%>
                    <%--<li><a href="#" class="service_two">Pellentesq tris senectus</a></li>--%>
                    <%--<li><a href="#" class="service_three">Duis at commodo molestie</a></li>--%>
                    <%--<li><a href="#" class="service_four">In aliquet in libero</a></li> --%>
                    <%--<li><a href="#" class="service_five">Maecenas ut pretium</a></li>   --%>
                    <%--</ul>--%>
                    <%--</div>--%>
                    <%--</div> <!-- end of services -->--%>
                    
                    <div class="panel" id="gallery">
                        <h3>每日美图</h3>
                        <ul id="gallery_container">
                            <li><a href="http://www.cssmoban.com/"><img src="${ctx}/staticfile/images/gallery/1.jpg"
                                                                        alt="Image 01"/></li>
                            <li><a href="#"><img src="${ctx}/staticfile/images/gallery/2.jpg" alt="Image 02"/></a></li>
                            <li class="rmb"><a href="#"><img src="${ctx}/staticfile/images/gallery/3.jpg"
                                                             alt="Image 03"/></a></li>
                            <li><a href="#"><img src="${ctx}/staticfile/images/gallery/4.jpg" alt="Image 04"/></a></li>
                            <li><a href="#"><img src="${ctx}/staticfile/images/gallery/5.jpg" alt="Image 05"/></a></li>
                            <li class="rmb"><a href="#"><img src="${ctx}/staticfile/images/gallery/6.jpg"
                                                             alt="Image 06"/></a></li>
                        </ul>
                    </div> <!-- end of gallery -->
                    
                    <div class="panel" id="contactus">
                    	<h3>修改个人信息</h3>
                    	
                        <div class="col_370 float_l">
                            <div id="contact_form">
                                <form method="post" name="contact" action="updateUserInfoByUser">
	                                <table id="userInfoTalbe">
                        			<input id="id" name="userInfoId" type="hidden" value="${userInfo.userInfoId}" />
                        			<tr>
	                        			<td>
                                   			 <label for="name">真实姓名:</label> <input type="text" id="name" name="name" class="required input_field" value="${userInfo.name}"/>
                                   	    </td>
                                        <td>
            								 <label for="email">年龄:</label><input type="text" id="age" name="age" class="required input_field" value="${userInfo.age}"/>
                                    		 
                                   		 </td>
                                    </tr>
                                    <tr>
	                        			<td>
                                    <label for="text">性别:</label>

                                    <input type="radio" name="gender" value="男" <c:if test="${userInfo.gender=='男'}">checked='checked'</c:if>/>男
                                    <input type="radio" name="gender" value="女" <c:if test="${userInfo.gender=='女'}">checked='checked'</c:if>/>女
									 </td>
                                        <td>

                                            <label for="email">邮箱:</label> <input type="text" id="email" name="email"
                                                                                  class="validate-email required input_field"
                                                                                  readonly="readonly"
                                                                                  value="${userInfo.email}"/>
                                    
                                    
                                     </td>
                                    </tr>
                                     <tr>
	                        			<td>
                                    <label for="email">电话:</label> <input type="text" id="phone" name="phone" class="validate-email required input_field" value="${userInfo.phone}"/>
                                   
                                     </td>
                                        <td>
                                     <label for="email">昵称:</label> <input type="text" id="nickname" name="nickname" class="validate-email required input_field" value="${userInfo.nickname}"/>
                                    <div class="cleaner_h10"></div>
                                      </td>
                                    </tr>
                                     <tr>
	                                     <td>
                                             <%--<label for="text">上传头像:</label> --%>
                                             <%--<input type="file" />--%>

                                    
                                     </td>
	                        			<td>
                                    <label for="text">个性签名:</label> <textarea id="text" name="sign" style="width:240px" class="required">${userInfo.sign}</textarea>

                                    <div class="cleaner_h10"></div>
                                     </td>
                                    </tr>
                                     <tr>
	                        			<td>
                                    <input type="submit" value="修改" id="submit" name="submit" class="submit_btn float_l" />
                                    </td>
                                         <td>
                                             <a href="${ctx}/sendUpdatePasswordMail?userId=${userInfo.userInfoId}&email=${userInfo.email}">修改密码</a>
                                         </td>
                                    <td>
                                        <%--<input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />--%>
                                        <button type="reset" value="重置" class="submit_btn float_r">重置</button>
                                    </td>

                                    </tr>
                                    </table>
                            	</form>
                            </div>
                        </div>



                        <!--<div class="col_220 float_r">
                            <h4>Mailing Address</h4>
                            <h5>Company Name</h5>
                            225-184 Aliquam quis lacus, <br />
                            Lorem ipsum dolor sit, 15520<br />
                            Quisque a ante velit<br /><br />
                            
                            <strong>Phone:</strong> 042-252-4880 <br />
            				<strong>Email:</strong> <a href="mailto:info@yoursite.com">info@yoursite.com</a><br />
                        </div>-->
                    </div> <!-- end of contact us -->
				
            	</div>
			</div>
        
        	<div class="cleaner"></div>
        </div> <!-- end of tempatemo_content -->
    
    	<div id="templatemo_sidebar">
        	<div id="menu">
                <ul class="navigation">
                	<li><a href="#home" class="selected">我的首页</a></li>

                    <%--<li><a href="#services">发下心情</a></li>--%>
                    <li><a href="#portfolio">每日美图</a></li>
                    <li><a href="#contactus">换个身份</a></li>
                </ul>
                <div class="cleaner"></div>
            </div>
    	</div> <!-- end of templatemo_sidebar -->
    </div>
    
    <div id="templatemo_footer_wrapper">
        <div id="templatemo_footer">
        
            Copyright © 2048 <a href="#">Your Company Name</a> | Template from <a href="http://www.cssmoban.com" target="_parent" title="网站模板">网站模板</a>
            
            <div class="cleaner"></div>
		</div>        
    </div>
</div>

</body>
</html>