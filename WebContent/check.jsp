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
    sql=con.createStatement();
    rs=sql.executeQuery("SELECT * FROM login");
    while(rs.next()){
    	if(rs.getString("userName").equals(request.getParameter("username")) && rs.getString("userPassword").equals(request.getParameter("password"))){
    	    if(rs.getString("power").equals("manager")){%>
    	    <script type="text/javascript">  
    	    	let a = "manage.jsp";
    	    	window.location.href=a;
    	    </script>  
    	    <%}else{%>
        	<script type="text/javascript">  
    	    	let a = "index.jsp?username=<%= request.getParameter("username")%>";
    	    	window.location.href=a;
    	    </script> 
    	    <%}
    	}else{	
    	}
    }
    con.close();
    %>
        	<script type="text/javascript">  
    	       let a = "login.jsp?error=1";
    	       window.location.href=a;
    	    </script>  
    <%	
}
catch(SQLException e1){out.print(e1);}
%>
</body>
</html>