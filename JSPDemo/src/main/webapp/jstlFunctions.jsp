<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var="str" value="Priyanka Gundawar SaiRam Dikondawar"/>

<!--  length is ${fn:length(str)}-->

<!-- <c:forEach items="${fn:split(str,'a')}" var="s">
<br> ${s}
</c:forEach> -->

<!--  index: ${fn:indexOf(str,'Ram')}  -->

<!--  is there: ${fn:contains(str,'war')} -->
 
 <!-- <c:if test="${fn:contains(str,'war')}">
  was is there!!
  </c:if>  -->
  
 <!--    <c:if test="${fn:endsWith(str,'Dikondawar')}">
  thats right !!
  </c:if> -->
  
  ${fn:toUpperCase(str)}
 

</body>
</html>