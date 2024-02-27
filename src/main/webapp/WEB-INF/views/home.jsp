<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  	<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
  	<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
  	<c:url var="css" value="/resources/css"/>
  	<c:url var="js" value="/resources/js"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${contextRoot}-${title}</title>
<link href="${css}/bootstrap.min.css"/>
<script src="${js}/jquery.js"></script>
<script src="${js}/js/bootstrap.min.js"></script>
</head>
<body>
 <div style="padding:250px">
    <h2 class="text-uppercase">Spring MVC 5 + Hibernate 5 + JSP + MySQL
    Example</h2>
    
    <a href="${contextRoot }/slist">All Students</a>
  <c:if test="${clickOnuserlogin==true}">
     <%@include file='./include/addStudent.jsp' %>
  </c:if>
  <c:if test="${userClickOnallStudent==true}">
     <%@include file='./include/allStudents.jsp' %>
  </c:if>
 </div>
</body>
</html>