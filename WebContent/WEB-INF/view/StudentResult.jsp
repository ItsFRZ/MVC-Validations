<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	
    <%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page isELIgnored="false" %> --%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	Name :-		${studentsData.name}<br>
	Gender :- ${studentsData.gender}<br>
	Majors :- 
	<ul>
		
		<c:forEach var="temp" items="${studentsData.subjects}">
			<li>${temp}</li>
		</c:forEach>
		
	</ul>
	Mobile No :-		${studentsData.mobileNo}<br>
	Email Id :-		${studentsData.eMail}<br>
	Password :-		${studentsData.password}<br> 

</body>
</html>