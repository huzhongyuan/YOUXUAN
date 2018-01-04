<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>  
<%@ page language="java" import="java.io.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
Connection con;
Statement sql;
ResultSet rs;
try{Class.forName("com.mysql.cj.jdbc.Driver").newInstance();}
catch(Exception e){out.print(e);}
try{
    String uri="jdbc:mysql://localhost:3306/clothes?useSSL=true&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    con=DriverManager.getConnection(uri,"root","root");
    sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    String ms = "INSERT INTO goods(goodsName,goodsInfo,goodsType,store,price,photo) VALUES('"+request.getParameter("goodsName")+"','"+request.getParameter("goodsInfo")+"','"+request.getParameter("goodsType")+"','"+request.getParameter("store")+"','"+request.getParameter("price")+"','"+"./images/4.png"+"')";
    out.print(ms);
    int r=sql.executeUpdate(ms);
    	    %>
     	<script type="text/javascript">  
    	var a = "manage.jsp";
    	window.location.href=a;
    	</script>  
    	    <%
    con.close();
}
catch(SQLException e1){out.print(e1);}
%>
</body>
</html>