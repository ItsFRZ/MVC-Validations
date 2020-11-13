<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%@ page isELIgnored="false" %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<style>
	.ierror{
		background: red;
		border-color: powderblue;
		color: white;
		font-weight : bold;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form:form action="formData" modelAttribute="studentsData">
	
		<form:input type="text" path="name" placeholder="Applicant Name" />
		<form:errors path="name" cssClass="ierror"></form:errors>
		<br>
		Gender :- 
		<form:radiobutton path="gender" value="Male" label="Male" />
		<form:radiobutton path="gender" value="Female" label="Female" />
		<form:radiobutton path="gender" value="Others" label="Others" />
		<br>
		Majors :- 
		<form:checkbox path="subjects" value="DataStructure" label="DataStructure"/>
		<form:checkbox path="subjects" value="Algorithm" label="Algorithm"/>
		<form:checkbox path="subjects" value="Operating System" label="Operating System"/>
		<form:checkbox path="subjects" value="Software Engineering" label="Software Engineering"/>
		<form:checkbox path="subjects" value="Computer Networks" label="Computer Networks"/>
		<form:checkbox path="subjects" value="Database Management System" label="Database Management System"/>
		
		<br>
		<form:input type="number" path="mobileNo" placeholder="Mobile No" />
		<form:errors path="mobileNo" cssClass="ierror"></form:errors>
		<br>
		<form:input type="email"  path="eMail" placeholder="Email Address" />
		<form:errors path="eMail" cssClass="ierror"></form:errors>
		<br>
		<form:input type="password" path="password" placeholder="Password" />
		<form:errors path="password" cssClass="ierror"></form:errors>
		<br>
		
		<input type="submit">
		
	</form:form>

</body>
</html>