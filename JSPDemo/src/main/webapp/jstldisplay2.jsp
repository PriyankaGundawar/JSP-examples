<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String s = request.getParameter("name").toString();
out.println(s);
%>

Hello

<c:forEach items="${Stud}" var="s">
${s.name}<br>

</c:forEach>
  

</body>
</html>