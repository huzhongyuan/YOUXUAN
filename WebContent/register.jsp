<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript" src = "./js/module/header.js" data-css = "register" data-title = "register"></script>
<body>
  <div id="logo">
    <div>
      <span id="lg">YOUXUAN</span>
      <span id="lg1">.com</span>
    </div>
    <div id="info">品质源于生活.</div>
  </div>
  <div class="content">
  	<form action="adduser.jsp">
	    <div class="input-group">
	      <span class="input-group-addon" id="basic-addon1">用&nbsp;&nbsp;户&nbsp;名</span>
	      <input type="text" class="form-control username" name="username" placeholder="只能输入英文字母、数字和下划线" aria-label="Username" aria-label="Username" aria-describedby="basic-addon1">
	    </div>
	    <div class="input-group">
	      <span class="input-group-addon" id="basic-addon1">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</span>
	      <input type="password" name="password" class="form-control password1" placeholder="密码不能超过8位" aria-label="Username" aria-describedby="basic-addon1">
	    </div>
	    <div class="input-group">
	      <span class="input-group-addon p" id="basic-addon1">确认密码</span>
	      <input type="password" class="form-control password2" placeholder="请重复密码" aria-label="Username" aria-describedby="basic-addon1">
	    </div>
	    <div id="btnBox">
	      <input class="btn btn-primary" type="submit" value="立即注册" id="register">
	    </div>
    </form>
  </div>
  <canvas id="canvas"></canvas>
  </body>
  <script type="text/javascript" src="./js/lib/canvas.js"></script>
<script type="text/javascript" src = "./js/module/footer.js"></script>
