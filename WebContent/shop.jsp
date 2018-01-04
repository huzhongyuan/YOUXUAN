<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript" src = "./js/module/header.js" data-css = "shop" data-title = "shop"></script>

<body>
  <div id = "u">
    <%if(request.getParameter("username") == null || request.getParameter("username").equals("")) {%>
  		<span id="user1">亲,请先 <a href = 'login.jsp'>登陆</a> 哦~</span>
    <%
    	}else{
    %>
   		hello,<span id="user"><%= request.getParameter("username")%></span>
    <% 
    	} 
    %>
  </div>
  <div id="logo" style="cursor:pointer;">
    <div>
      <span id="lg">YOUXUAN</span>
      <span id="lg1">.com</span>
    </div>
    <div id="info">品质源于生活.</div>
  </div>
  <div id="content">
    <ul class="list-group" id="commodity">
      <li class="list-group-item" style="background-color:white;" >
        <div class="name" style="color:black">名称</div>
        <div class="price" style="color:black;">价格</div>
      </li>
    </ul>
    <div>
      <input id="jiesuan" class="btn btn-danger" type="button" value="结算">
      <div id="all">总计：0</div>
    </div>
  </div>
</body>


<script type="text/javascript" src = "./js/module/footer.js"></script>
