<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html> 
<html>
<head>
<meta charset="utf-8"/>
<title>奇趣驿站</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;} 
</style>
<script src="js/jquery.js"></script>
<script src="js/verificationNumbers.js"></script>
<script src="js/Particleground.js"></script>
</head>
<script type="text/javascript">
$(document).ready(function() {
	  //粒子背景特效
	  $('body').particleground({
	    dotColor: '#5cbdaa',
	    lineColor: '#5cbdaa'
	  });
	  //验证码
	  createCode();
	  
	  //测试提交，对接程序删除即可
	  $(".submit_btn").click(function(){
		  var verify = validate();
		  if(verify == true){
		  $.ajax({ 
				type:"post",
				async:false,
				url:"../loginAction.action?methodName=test",
				data:{
					user_name:$("#user_name").val(),
					user_pwd:$("#user_pwd").val()
				},
				success:function(data){
					var str = data;
					if(str > 0){
						window.location.href="${pageContext.request.contextPath}/admin/easyuiTest.jsp";
					}else{
						alert("用户名或密码错误"); 
					}	
				}
			});
	      } 
	   });
	});
</script>
<body>
<dl class="admin_login">
 <dt>    
  <strong>奇趣驿站</strong>
  <em>Management System</em>  
 </dt>
 <dd class="user_icon">
  <input type="text" id="user_name" placeholder="账号" class="login_txtbx"/>
 </dd>
 <dd class="pwd_icon">
  <input type="password" id="user_pwd" placeholder="密码" class="login_txtbx"/>
 </dd>
 <dd class="val_icon">
  <div class="checkcode">
    <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
    <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
  </div>
<!--  <input type="button" value="验证码核验" class="ver_btn" onClick="validate();">  -->
 </dd>
 <dd>
  <input  type="button" value="立即登录" class="submit_btn"/>
 </dd>
 <dd>
  <p>© 2018-2019 djkplay.club 版权所有</p>
  <p><a href="http://www.miitbeian.gov.cn">湘ICP备18014513号</a></p>
 </dd>
</dl>

</body>
</html>
