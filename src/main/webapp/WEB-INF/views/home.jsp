<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  	<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
  	<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${contextRoot}-${title}</title>
<link href="/resources/css/bootstrap.min.css"/>
<link href="/resources/jquery.js"/>
</head>
<body>
  <c:if test="${clickOnuserlogin==true}">
     <%@include file='./include/addStudent.jsp' %>
  </c:if>
   <script type="text/javascript" src="/resources/js/bootstrap.bundle.js"/>
</body>
</html>