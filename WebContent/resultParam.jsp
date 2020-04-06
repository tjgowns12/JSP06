<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>resultParam.jsp<br>

id:<%=request.getParameter("id") %><br>
pwd:<%=request.getParameter("pwd") %><br>
<h3>el 표기법</h3>
id: ${param.id }<br>
<c:set var="asd" value="${param.id }"/>
pwd:${param.pwd}

<!-- request란 param이란 값을 통해서 값을 가져온다 -->
<!-- 비밀번호는 한글이 안들어간다 -->


</body>
</html>