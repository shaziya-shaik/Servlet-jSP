<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*,javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String Query="select * from student where roll_no=108";
	String url="jdbc:mysql://localhost:3306/JDBC";
	String uname="root";
	String password="shaziya@oct2002";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,uname,password);
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(Query);
	rs.next();
%>


Roll_no :<%=rs.getInt(1)%><br>
name    :<%= rs.getString(2)%>
	
	
</body>
</html>