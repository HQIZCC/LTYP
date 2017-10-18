<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>乐途影评</title>
  
    <link rel="stylesheet" type="text/css" href="${ctx}/staticfile/lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="${ctx}/staticfile/stylesheets/theme.css">
    <link rel="stylesheet" href="${ctx}/staticfile/lib/font-awesome/css/font-awesome.css">

    <script src="${ctx}/staticfile/lib/jquery-1.7.2.min.js" type="text/javascript"></script>
    <!--   -->
    <link rel="stylesheet" type="text/css" href="${ctx}/staticfile/css/logo.css">
 
  </head>
 
  <body class="">  
    
    <div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                    
                </ul>
                <a class="brand" href="index.html"><span class="first">乐途</span> <span class="second">影评</span></a>
        </div>
    </div> 
        <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">Sign Up</p>
            <div class="block-body">
                <form>
                    <label>用户名:</label>
                    <input type="text" name="username" class="span12"><span></span>
                    <label>密  码:</label>
                    <input type="password" name="password" class="span12"><span></span>
                    <label>确认密码:</label>
                    <input type="text" name="password2" class="span12"><span></span>
                    <label>邮  箱:</label>
                    <input type="text" name="email" class="span12"><span></span>
                    <label>手机号:</label>
                    <input type="text" name="phone" class="span12"><span></span>
                    <a href="#" onclick="formSubmit('regist','_self');this.blur();" class="btn btn-primary pull-right">注 册</a>
                    <label class="remember-me"><input type="checkbox" name="agree"> I agree with the <a href="terms-and-conditions.html">Terms and Conditions</a></label>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
        <p><a href="/login/signin">sign-in</a></p>
    </div>
</div> 


    <script src="${ctx}/staticfile/lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            var formObj= {
                "checkFrom": function () {
                    //1.非空校验
                    var res1 = this.checkNull("username", "用户名不能为空");
                    var res2 = this.checkNull("password", "密码不能为空");
                    var res5 = this.checkNull("password2", "确认密码不能为空");
                    var res4 = this.checkNull("email", "邮箱不能为空");
                    var res4 = this.checkNull("phone", "电话号码不能为空");
                    var res5 = this.checkPassword("password", "两次密码不一致");
                    var res6 = this.checkEmail("email", "邮箱格式不正确");

                    //2.两次密码是否一致校验

                    //3.邮箱格式校验

                    //检查不符合
                    return res1 && res2 && res3 && res4 && res5 && res6;
                },"checkNull":function (name,msg) {
                    var value = $("input[name='"+name+"']").val();
                    this.setMsg(name,"");
                    if(value.trim()==""){

                        this.setMsg(name,msg);
                        return false;
                    }
                    return true;
                },
                /* 设置错误提示消息*/
                "setMsg":function (name,msg) {
                    //设置提示消息
                    var $span=$("input[name='"+name+"']").next("span");
                    $span.html(msg);
                    $span.css("color","red");
                },"checkPassword":function (name,msg) {
                    var psw1=$("input[name='"+name+"']").val();
                    var psw2=$("input[name='"+name+"2']").val();
                    this.setMsg(name,"");
                    this.checkNull(name+"2","确认密码不能为空");
                    if(psw1!="" &&psw2!=""){
                        if(psw1!=psw2){
                            //设置提示消息
                            this.setMsg(name+"2",msg)
                            return false;
                        }
                    }
                    return true;
                },
                /*检查邮箱格式是否正确*/
                "checkEmail":function (name,msg) {
                    var email=$("input[name='"+name+"']").val();
                    var regExp=/^\w+@\w+(\.\w+)+$/;
                    if(email!=""){
                        if(!regExp.test(email)){
                            this.setMsg(name,msg);
                            return false;
                        }
                        return true;
                    }

                }
            }


            $('.demo-cancel-click').click(function(){return false;});
        });


    </script>
    
  </body>
</html>


