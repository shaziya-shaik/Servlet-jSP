<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/company"  user="root" password="shaziya@oct2002"/>
	<sql:query  var="rs" dataSource="${db}">select * from employ_details;</sql:query>
	<table border="2" width="100%">  
<tr>  
<th> ID</th>  
<th> Name</th>  
<th>salary</th>  
<th>ph_number</th>  
<th>address</th>  
<th>bonus</th> 
</tr>  

	<c:forEach items="${rs.rows}" var="details">
	<tr>
	<td><c:out value="${details.E_ID}" /></td>
	<td><c:out value="${details.E_Name}" /></td>
	<td><c:out value="${details.EE_salary}" /></td>
	<td><c:out value="${details.E_ph_number}" /></td>
	<td><c:out value="${details.E_address}" /></td>
	<td><c:out value="${details.E_bonus}" /></td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>