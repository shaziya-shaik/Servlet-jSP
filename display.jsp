<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<% 
//	String k=request.getAttribute("label1").toString();
	//out.println(k);
	
%>
	
	${student}<br>
	${label.name}
	<!--  <c:out value="${label1}"/>-->
	<c:forEach items="${student}" var="s">
	${s}<br></c:forEach>
	<c:forEach items="${student}" var="s">
	${s.id}. ${s.name}<br></c:forEach>

</body>
</html>