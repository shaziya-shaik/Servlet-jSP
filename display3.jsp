<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="str" value="shaziya khan" />
	Length :${fn:length(str)}<br>
	index :${fn:indexOf(str,"khan")}<br>
	contains :${fn:contains(str,"shaik")}<br>
	split  :<c:forEach items="${fn:split(str,' ')}" var="s">
	${s}<br>
	</c:forEach>
	<c:if test ="${fn:endsWith(str,'begum')}"> not there</c:if>
	${fn:toUpperCase(str)}
</body>
</html>