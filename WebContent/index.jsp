<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.io.*" %>
<script type="text/javascript" src = "./js/module/header.js" data-css = "index" data-title = "index"></script>

<body>
  <div id = "u">
  	<%if(request.getParameter("username") == null) {%>
  		<span id="user1">亲,请先 <a href = 'login.jsp'>登陆</a> 哦~</span>
  		<span id=user></span>
    <%
    	}else{
    %>
   		hello,<span id="user"><%= request.getParameter("username")%></span>
    <% 
    	} 
    %>
    <span id="shopping" style="color:red;cursor:pointer;margin-left:20px;">查看购物车</span>
  </div>
  <div id="logo" style="cursor:pointer;">
    <div>
      <span id="lg">YOUXUAN</span>
      <span id="lg1">.com</span>
    </div>
    <div id="info">品质源于生活.</div>
  </div>
  <div id="lb">
    <div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <div id="carousel-ad" class="carousel slide" data-ride="carousel" data-interval="4000">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="./images/1.png" class="img" alt="First slide">
        </div>
        <div class="item">
            <img src="./images/2.png"  class="img" alt="Second slide">
        </div>
        <div class="item">
            <img src="./images/3.png"  class="img" alt="Third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel"
        data-slide="prev">&lsaquo;
    </a>
    <a class="carousel-control right" href="#myCarousel"
        data-slide="next">&rsaquo;
    </a>
</div>
</div>
  </div>
  <div class="content">
    <%
Connection con;
Statement sql;
ResultSet rs;
try{Class.forName("com.mysql.cj.jdbc.Driver").newInstance();}
catch(Exception e){out.print(e);}
try{
    String uri="jdbc:mysql://localhost:3306/clothes?useSSL=true&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    con=DriverManager.getConnection(uri,"root","root");
    sql=con.createStatement();
    rs=sql.executeQuery("SELECT * FROM goods");
    while(rs.next()){
    	out.print("<div class="+"goods"+">"+
	      "<div class="+"photobox"+">"+
	        "<img class='"+"photo"+"'"+"src='"+rs.getString("photo")+"'>"+
	        "<div class="+"pn"+">"+"<span class="+"price"+">"+"$"+"<span class="+"pricesingle"+">"+rs.getDouble("price")+"</span>"+"</span><span class="+"num"+">"+"库存"+rs.getInt("store")+"</span></div>"+
	        "<div class="+"nd"+">"+"<div class="+"name"+">"+rs.getString("goodsName")+"</div><div class="+"des"+">"+rs.getString("goodsInfo")+"</div></div>"+
	        "<div class="+"buy"+">"+"加入购物车"+"</div>"+
	      "</div>"+
	    "</div>"
	    );
    }
    con.close();
}
catch(SQLException e1){out.print(e1);}
%>
  </div>
</div>
</body>


<script type="text/javascript" src = "./js/module/footer.js"></script>
