<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>elScope.jsp<br>


<%
 pageContext.setAttribute("name", "page man");
 request.setAttribute("name", "requst man");
 session.setAttribute("name", "session man");
 application.setAttribute("name", "application man");
%>
name:${name}<br>
name:${name }<br>
page name:${pageScope.name }<br>
request name:${requestScope.name }<br>
session name:${sessionScope.name }<br>
application name:${applicationScope.name }<br>
<a href="resultScope.jsp">결과 페이지 이동</a>


<!--name의 값은 현재 페이지에서 가장작은 페이지 데이터를 가져온다 
현재 pageContext가 값이 적어서 pageContext의 값을 가져옴  -->

<!--param은 request의 값을 가져올때 사용함-->
<!-- <$pageContext.getAttribute("name") 랑 똑같음 16라인 $> -->

</body>
</html>