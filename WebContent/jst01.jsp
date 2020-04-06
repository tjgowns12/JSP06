<%@page import="java.util.ArrayList"%>
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
<c:set var="test" value="홍길동"/>
<c:choose>
<c:when test="${test=='홍길동' }">
<b>홍길동이 같다</b>
</c:when>
<c:when test="${test=='김길동' }">
<b>김길동이 같다</b>
</c:when>
<c:otherwise>
<b>같은값이 없다 </b>
</c:otherwise>
</c:choose>

<!-- choose범위 위에서 부터 if elseif else -->


<hr>
<c:set var="mySession" value="kakaka" scope="session"/>
<a href="el01.jsp">세션 생성 후 el01이동</a>
<c:remove var="mySession"/><!-- 세션 삭제 -->
<!-- 세션을 생성함 scope:범위  -->


<%-- <c:redirect url="el01.jsp"/>--%>
<!-- 해당페이지로 바로 넘어감 -->
<%--<c:import url=""/> --%>
<!-- 해당하는 파일을 가져옴!! -->
<hr>
<%
String [] name={"111","222","333","444"};
ArrayList arr=new ArrayList();
arr.add("test");arr.add("bbbb");arr.add("kkkk");
%>
<c:set var="values" value="<%=arr %>" />
<c:forEach var="st" items="${values }">
${st }<br>
</c:forEach>
<!-- Arraylist 배열등 출력 가능 foreach 문 -->

<hr>
<c:set var="num02" value="test"/>
<c:if test= '${num02=="test" }'>
<b>두 값은 같습니다</b>
</c:if>
<hr>
<%String s="test";%>
<c:set var="s01" value="<%=s %>"/>
${s01 }
<!-- jsp변수를 c:set value값에 넣을수 있다 그리고 s01변수를 부름--><br>
s:${s }
<!-- 값을 넣어주면 표현이 불가능함  -->
<hr>
<c:set var="num01">
안녕하세요 만나서 반갑습니다.<br>
</c:set>
${num01 }
<hr>
<c:set var="num" value="test jstl22222"></c:set>
${num }<br>
<hr>
<c:out value="text jstl"/>



<!-- jst를 사용할대 uri설정을 해야됨 -->
<!-- prefix 는 core라는 기능을 가져와서 쓴다는 것임 core를 c로 설정한것  바꿔서 사용 가능 
보통 c라고 쓴다-->
<!-- c:out은 value에 있는 값을 출력하는 용도 딱히 쓰지는 않음 -->
<!-- set은 변수 var는 변수이름 value는 값 -->
</body>
</html>