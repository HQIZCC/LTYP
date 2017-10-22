<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
      <title>密码修改</title>
      <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="">
      <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="${ctx}/staticfile/lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="${ctx}/staticfile/stylesheets/theme.css">
    <link rel="stylesheet" href="${ctx}/staticfile/lib/font-awesome/css/font-awesome.css">

    <script src="${ctx}/staticfile/lib/jquery-1.7.2.min.js" type="text/javascript"></script>


      <link rel="stylesheet" type="text/css" href="${ctx}/staticfile/css/logo.css">
      <script type="text/javascript">
          $("input[name=password]").blur(function () {
              var val = $(this).val();

              if (!formObj.checkNull("password", "密码不能为空")) {

              } else {
                  if (!formObj.checkPassword("password", "两次密码不相同")) {

                  } else {
                      $("#password_msg")
                          .html("<img src='images/right.ico'>");


                      var pass2 = $("input[name=password2]").val();

                      if (pass2) {
                          $("#password2_msg")
                              .html("<img src='images/right.ico'>");
                      }


                  }
              }
          });
          $("input[name=password2]").blur(function () {
              if (!formObj.checkNull("password", "密码不能为空")) {

              } else {
                  if (!formObj.checkPassword2("password", "两次密码不相同")) {

                  } else {
                      $("#password2_msg")
                          .html("<img src='images/right.ico'>");
                      $("#password_msg")
                          .html("<img src='images/right.ico'>");
                  }
              }

          });
          var formObj = {
              checkForm: function () {
                  var flag = true;
                  //非空验证
                  flag = this.checkNull("password", "密码不能为空") && flag;
                  flag = this.checkNull("password2", "确认密码不能为空") && flag;
                  //两次输入的密码是否相同
                  flag = this.checkPassword("password", "两次密码不相同") && flag;
                  return flag;
              },
              checkPassword: function (name, msg) {
                  var pwd = $("input[name=" + name + "]").val();
                  var pwd2 = $("input[name=" + name + "2]").val();
                  if ($.trim(pwd) != "" && $.trim(pwd2) != "") {
                      if (pwd != pwd2) {
                          this.setMsg(name, msg);
                          return false;
                      }
                  }
                  return true;
              },
              checkPassword2: function (name, msg) {
                  var pwd = $("input[name=" + name + "]").val();
                  var pwd2 = $("input[name=" + name + "2]").val();
                  if ($.trim(pwd) != "" && $.trim(pwd2) != "") {
                      if (pwd != pwd2) {
                          this.setMsg(name + "2", msg);
                          return false;
                      }
                  }
                  return true;
              },
              setMsg: function (name, msg) {
                  $("#" + name + "_msg").text(msg);
              }
          };

      </script>

  </head>

  <body class="">


  <div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                    
                </ul>
            <a class="brand" href="#"><span class="first">乐途</span> <span class="second">影评</span></a>
        </div>
    </div> 
        <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">Reset your password</p>
            <div class="block-body">
                <form>
                    <input type="hidden" name="userId" value="${userId}"/>
                    <input type="password" class="span12" placeholder="新密码" name="password">
                    <span id="password_msg" style="color:red"></span>
                    <input type="password" class="span12" placeholder="确认密码" name="password2">
                    <span id="password2_msg" style="color:red"></span>
                    <a href="#" onclick="formSubmit('${ctx}/updatePassword','_self');this.blur();"
                       class="btn btn-primary pull-right">修改密码</a>
                </form>
                <p>
                    <br/>
                </p>
            </div>
        </div>
    </div>
</div>
    <script src="${ctx}/staticfile/lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip(); //提示框
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  </body>
</html>


