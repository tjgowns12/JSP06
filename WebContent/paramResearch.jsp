<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!-- 위에 내용은 들어오는 한글을 깨지지 않게 한글처리함 . -->

<%
String[] s = request.getParameterValues("season");
out.print("당신이 좋아하는 계절<br>");
for(String ss: s){
	out.print(ss+"<br>");
}
%>
<!-- 위 아래 똑같음  -->


<c:forEach var="season" items="${paramValues.season }">
${season }<br>
</c:forEach>




</body>
</html>