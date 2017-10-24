<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home </title>
    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta Tags -->
    <!-- Style Sheets -->
    <link href="${ctx}/staticfile/userPersonalInfo/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="${ctx}/staticfile/userPersonalInfo/css/font-awesome.css" rel="stylesheet">
    <link href="${ctx}/staticfile/userPersonalInfo/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- //Style Sheets -->
    <!--web-fonts-->
    <link href="http://fonts.googleapis.com/css?family=Josefin+Sans:100,300,400,600,700" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <!--//web-fonts-->
</head>

<body>
<!-- banner -->
<div class="banner" id="home">
    <div class="container">
        <!-- header -->
        <header>

            <div class="header-bottom-agileits">
                <div class="w3-logo">
                    <h1><a href="index.html">个人 主页<span class="sub-logo">个人 主页</span></a></h1>
                </div>
                <!-- navigation -->
                <nav class="navbar navbar-default shift">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1"
                                aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a class="active" href="index.html">主页</a></li>
                            <li><a class="scroll" href="#about">关于我</a></li>

                            <li><a class="scroll" href="#portfolio">个人相册</a></li>
                            <li><a class="scroll" href="#contact">修改个人信息</a></li>
                            <li><a href="${ctx}/index">返回前台</a></li>
                        </ul>

                    </div>
                    <!-- /.navbar-collapse -->

                </nav>
            </div>
            <div class="clearfix"></div>
            <!-- //navigation -->
        </header>
        <!-- //header -->
        <div class="banner-text-w3-agileits">
            <h5>Hi, 我是</h5>
            <h2>${userInfo.name}</h2>
            <p>这是我的个人主页</p>
            <div class="botton">
                <a href="#about" class="scroll">关于我 <span class="fa fa-caret-right"></span></a>
            </div>
        </div>
    </div>
</div>
<!-- //banner -->
<!--about-->
<div class="about-w3layouts" id="about">
    <div class="container">
        <div class="tittle-agileinfo">
            <div class="title-wthree">
                <h5 class="title-w3"><span>01</span>个人信息</h5>
                <div class="clearfix"></div>
            </div>
            <div class="about-top">
                <h3 class="subheading-agileits-w3layouts">我的信息</h3>
                <p class="para-agileits-w3layouts"></p>
            </div>
        </div>
        <div class="col-md-4 about-left-agileits">
            <div class="services-grids social">
                <a class="fa fa-delicious" aria-hidden="true"></a>
                <p class="para-agileits-w3layouts"></p>
                <div class="clearfix"></div>
                <h6>Logo Design</h6>
            </div>
            <div class="services-grids">
                <a class="fa fa-globe" aria-hidden="true"></a>
                <p class="para-agileits-w3layouts"></p>
                <h6>Website</h6>
            </div>
            <div class="services-grids">
                <a class="fa fa-desktop" aria-hidden="true"></a>
                <p class="para-agileits-w3layouts"></p>
                <h6>Softwares</h6>
            </div>
            <div class="services-grids">
                <a class="fa fa-mobile" aria-hidden="true"></a>
                <p class="para-agileits-w3layouts"></p>
                <h6>Applications</h6>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="col-md-8 about-right">
            <div class="about-border-w3ls">
            </div>
            <div class="person-info-agileits-w3layouts">
                <p class="para-agileits-w3layouts"><span>你好!, 我是 ${userInfo.name} </span>

                </p>
                <ul>
                    <li><span>姓名</span>: ${userInfo.name} </li>
                    <li><span>年龄</span>: ${userInfo.age} </li>
                    <li><span>性别</span>: ${userInfo.gender}</li>
                    <li><span>邮箱</span>: ${userInfo.email}</li>
                    <li><span>手机号</span>: ${userInfo.phone}</li>
                    <li><span>昵称</span>: <a href="#">${userInfo.nickname}</a></li>
                    <li><span>个人签名</span>: ${userInfo.sign}</li>

                    </li>
                </ul>
                <div class="clearfix"></div>

                <div class="pos-w3ls">
                    <h4><span class="red-w3ls">点</span> 击我</h4>
                    <div class="button-w3layouts"><a href="#contact" class="scroll">修改 信息</a></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--//about-->
<!--education-->

<!--//experience-->
<!-- awards and skills -->

<!-- //awards and skills -->
<!-- language -->

<!-- //language -->
<!-- gallery -->
<div class="gallery" id="portfolio" style="margin-top: 45px;">
    <div class="container">
        <div class="title-wthree">
            <h5 class="title-w3"><span>02</span>个人相册</h5>
            <div class="clearfix"></div>
        </div>
        <div class="w3ls_gallery_grids">
            <div class="col-md-4 w3_agile_gallery_grid">
                <div class="agile_gallery_grid">
                    <a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
                       href="${ctx}/staticfile/userPersonalInfo/images/gallery/1.jpg">
                        <div class="agile_gallery_grid1">
                            <img src="${ctx}/staticfile/userPersonalInfo/images/gallery/1.jpg" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </a>
                </div>
                <div class="agile_gallery_grid">
                    <a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
                       href="${ctx}/staticfile/userPersonalInfo/images/gallery/2.jpg">
                        <div class="agile_gallery_grid1">
                            <img src="${ctx}/staticfile/userPersonalInfo/images/gallery/2.jpg" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </a>
                </div>
                <div class="agile_gallery_grid">
                    <a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
                       href="${ctx}/staticfile/userPersonalInfo/images/gallery/3.jpg">
                        <div class="agile_gallery_grid1">
                            <img src="${ctx}/staticfile/userPersonalInfo/images/gallery/3.jpg" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4 w3_agile_gallery_grid">
                <div class="agile_gallery_grid">
                    <a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
                       href="${ctx}/staticfile/userPersonalInfo/images/gallery/4.jpg">
                        <div class="agile_gallery_grid1">
                            <img src="${ctx}/staticfile/userPersonalInfo/images/gallery/4.jpg" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </a>
                </div>
                <div class="agile_gallery_grid">
                    <a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
                       href="${ctx}/staticfile/userPersonalInfo/images/gallery/5.jpg">
                        <div class="agile_gallery_grid1">
                            <img src="${ctx}/staticfile/userPersonalInfo/images/gallery/5.jpg" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </a>
                </div>
                <div class="agile_gallery_grid">
                    <a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
                       href="${ctx}/staticfile/userPersonalInfo/images/gallery/6.jpg">
                        <div class="agile_gallery_grid1">
                            <img src="${ctx}/staticfile/userPersonalInfo/images/gallery/6.jpg" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4 w3_agile_gallery_grid">
                <div class="agile_gallery_grid">
                    <a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
                       href="${ctx}/staticfile/userPersonalInfo/images/gallery/7.jpg">
                        <div class="agile_gallery_grid1">
                            <img src="${ctx}/staticfile/userPersonalInfo/images/gallery/7.jpg" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </a>
                </div>
                <div class="agile_gallery_grid">
                    <a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
                       href="${ctx}/staticfile/userPersonalInfo/images/gallery/8.jpg">
                        <div class="agile_gallery_grid1">
                            <img src="${ctx}/staticfile/userPersonalInfo/images/gallery/8.jpg" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </a>
                </div>
                <div class="agile_gallery_grid">
                    <a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
                       href="${ctx}/staticfile/userPersonalInfo/images/gallery/9.jpg">
                        <div class="agile_gallery_grid1">
                            <img src="${ctx}/staticfile/userPersonalInfo/images/gallery/9.jpg" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //gallery -->

<!-- footer -->

<!-- contact -->
<div class="contact-agileits-w3layouts" id="contact">
    <div class="contact-right-wthree">
        <div class="container">
            <div class="title-wthree">
                <h5 class="title-w3"><span>03</span>修改个人信息</h5>
                <div class="clearfix"></div>
            </div>
            <div class="address-w3layouts">
                <p class="para-agileits-w3layouts"></p>
                <h4>${userInfo.email}</h4>
                <h6>${userInfo.phone}</h6>
                <p class="para-agileits-w3layouts"></p>
            </div>
            <div class="botttom-nav-agileits">
                <div class="w3l-social">
                    <ul>
                        <li><a href="#" class="fa fa-facebook"></a></li>
                        <li><a href="#" class="fa fa-twitter"></a></li>
                        <li><a href="#" class="fa fa-google-plus"></a></li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>

        </div>
    </div>
    <div class="wthree-form">
        <div class="container">
            <div class="col-md-6 contact-form agile_inner_grids">
                <h5 class="title-w3">修改</h5>
                <form action="updateUserInfoByUser" method="post">
                    <div class="fields-grid">
                        <input id="id" name="userInfoId" type="hidden" value="${userInfo.userInfoId}"/>

                        <div class="styled-input">
                            <input type="text" name="name" placeholder="真实姓名" value="${userInfo.name}">
                        </div>

                        <div class="styled-input">
                            <input type="text" name="age" placeholder="年龄" value="${userInfo.age}">
                        </div>

                        <div class="styled-input">
                            <input type="radio" name="gender" value="男"
                                   <c:if test="${userInfo.gender=='男'}">checked='checked'</c:if>/>男
                            <input type="radio" name="gender" value="女"
                                   <c:if test="${userInfo.gender=='女'}">checked='checked'</c:if>/>女
                        </div>

                        <div class="styled-input">
                            <input type="text" name="phone" placeholder="手机" value="${userInfo.phone}">
                        </div>

                        <div class="styled-input">
                            <input type="email" name="email" placeholder="邮箱" value="${userInfo.email}">
                        </div>

                        <div class="styled-input">
                            <input type="text" name="nickname" placeholder="昵称" value="${userInfo.nickname}">
                        </div>


                        <div class="clearfix"></div>
                    </div>
                    <div class="styled-input textarea-grid">
                        <textarea name="sign" placeholder="个人签名" required="">${userInfo.sign}</textarea>
                    </div>
                    <input type="submit" value="确定"/>

                    <a href="${ctx}/sendUpdatePasswordMail?userId=${userInfo.userInfoId}&email=${userInfo.email}">修改密码</a>
                </form>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //contact -->
<!-- Footer -->
<div class="copyright-wthree">
    <div class="container">
        <p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
        </p>
    </div>
</div>
<!-- //Footer -->

<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover"
                                                                         style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<script type='text/javascript' src='${ctx}/staticfile/userPersonalInfo/js/jquery-2.2.3.min.js'></script>
<!-- start-smoth-scrolling -->
<!--gallery -->
<script src="${ctx}/staticfile/userPersonalInfo/js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="${ctx}/staticfile/userPersonalInfo/css/chocolat.css" type="text/css" media="screen">
<!--light-box-files -->
<script type="text/javascript">
    $(function () {
        $('.w3_agile_gallery_grid a').Chocolat();
    });
</script>
<!-- //gallery -->
<script type="text/javascript" src="${ctx}/staticfile/userPersonalInfo/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/staticfile/userPersonalInfo/js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function () {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<!-- //here ends scrolling icon -->
<!--js for bootstrap working-->
<script src="${ctx}/staticfile/userPersonalInfo/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>

</html>