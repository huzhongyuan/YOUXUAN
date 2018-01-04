<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript" src = "./js/module/header.js" data-css = "login" data-title = "login"></script>
<body>
	<%if(request.getParameter("error") == null) {
		
	}else if(request.getParameter("error").equals(0)){
		%>
		    <script type="text/javascript">  
    	       alert('用户不存在!')
    	       window.location.href='login.jsp';
    	    </script>  
		<%
	}else if(request.getParameter("error").equals(2)){
		%>
	    <script type="text/javascript">  
	       alert('用户已存在!')
	    </script>  
	<%
	} else {
		%>
		<script type="text/javascript">
			alert('用户名或密码错误！');
		</script>
		<% 
	}%>
<div id="logo">
  <div>
    <span id="lg">YOUXUAN</span>
    <span id="lg1">.com</span>
  </div>
  <div id="info">品质源于生活.</div>
</div>
</div>
  <div id="loginBox">
  <form id="form" action="check.jsp">
    <div class="input-group">
      <span class="input-group-addon" id="basic-addon1">用户名</span>
      <input type="text" name="username" class="form-control Username" placeholder="只能输入英文字母、数字和下划线" aria-label="Username" aria-describedby="basic-addon1">
    </div>
    <div class="input-group">
      <span class="input-group-addon" id="basic-addon1">密&nbsp;&nbsp;&nbsp;&nbsp;码</span>
      <input type="password" name="password" class="form-control Password" placeholder="密码不能超过8位" aria-label="Password" aria-describedby="basic-addon1">
    </div>
    <div id="btnBox">
      <input class="btn btn-primary" type="submit"  value="登陆"  id="login">
      <input class="btn btn-primary" type="button" value="注册" id="register">
    </div>
  </form>
  </div>


<canvas id="canvas"></canvas>
</body>
<script type="text/javascript" src="./js/lib/canvas.js"></script>
<script type="text/javascript" src = "./js/module/footer.js"></script>
