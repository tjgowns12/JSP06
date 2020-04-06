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
<jsp:useBean id="dao" class="jsp06.Test"/>
	${dao.insert() }
	<c:set var="str" value="안녕하세요"/>
<table border="1"><tr><th>id</th><th>pwd</th></tr>
	<c:forEach var="dto" items="${dao.getArr(str) }">
		<tr>
			<td>${dto.id }</td><td>${dto.pwd }</td>
		</tr>
	</c:forEach>
</table>









<form action="paramResearch.jsp">
	좋아하는 계절:
	<input type="checkbox" name="season" value="spring">봄
	<input type="checkbox" name="season" value="summer">여름
	<input type="checkbox" name="season" value="fall">가을
	<input type="checkbox" name="season" value="winter">겨울
	<br><input type="submit" value="전송">
</form>



<!-- 여러개의 값을 가져올때 사용함  -->
</body>
</html>