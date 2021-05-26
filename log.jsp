<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String u=request.getParameter("username");
	String p=request.getParameter("password");
	
	try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection DB_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hotel", "root",
                "");
        Statement Query_stat = DB_con.createStatement();
        Query_stat.executeUpdate("insert into hello values('"+u+"','"+p+"');");
        System.out.println("done");
    } catch (Exception e){
        System.out.println(e);
    }
	response.sendRedirect("./index.html");
	%>
	
	
</body>
</html>