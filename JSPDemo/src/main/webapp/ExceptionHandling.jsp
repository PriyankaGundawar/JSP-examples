<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
int m = 5/0; //this line will throw an error. we need to handle this  including error page.
//above we have included erroPage=error.jsp. need to create error.jsp file to show the error message on other page.

//we can use try catch as well to handle the exceptions
%>
 
</body>
</html>