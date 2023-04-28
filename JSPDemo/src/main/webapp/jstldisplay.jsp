<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Hello
<%

String name = request.getAttribute("label").toString();
out.println(name);

//instead of these jave lines we can directly use below ${}. these are EL(Expression library)
%>

  ${label}
  

</body>
</html>