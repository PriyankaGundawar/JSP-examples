
    
    <!-- the below tag is declarative and it is uses to import the packages -->
    
   <%@page import="java.util.*" %> 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!

//this is declaration block the variables/methods will declared outside of service block.
int i=5;
public void m1(){
	
}

%>

<% 
//this is scriptlet block where we can write java code and directly it will convert to servlet inside service method.
int a=5;
out.println(a); 

%>

<!-- the below tag is expression tag. used to print anything on page(instead of wrint out.println we can use this tag). -->
<%=i %>

</body>
</html>