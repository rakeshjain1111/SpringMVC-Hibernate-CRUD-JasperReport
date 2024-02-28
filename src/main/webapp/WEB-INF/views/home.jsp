<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  	<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
  	<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
  	<c:url var="css" value="/resources/css"/>
  	<c:url var="js" value="/resources/js"/>
  	<c:url var="img" value="/resources/img"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${contextRoot}-${title}</title>
<link href="${css}/bootstrap.min.css" rel ="stylesheet"/ >
<link href="${css}/datatables.min.css" rel ="stylesheet"/ >
<link href="${css}/style.css" rel ="stylesheet"/ >
<%-- <script src="${js}/jquery.js"></script>
 --%>
 <script src="${js}/datatables.min..js"></script>
 <script src="${js}/bootstrap.bundle.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
    	<h2 class="text-uppercase mx-auto mt-4 mb-3">Spring MVC 5 + Hibernate 5 + JSP + MySQL Example</h2>
    	<div class="col-md-4 sidebar d-blockr">
    	      <h3>Menu</h3>
    	     <a href="${contextRoot }/slist" class="btn btn-primary d-block mb-2 mt-2">All Students</a>
    	     <a href="${contextRoot }/"  class="btn btn-primary d-block mb-2">Add Student</a>
    	</div>
    	<div class="col-md-8 ">
   		
		  <c:if test="${clickOnuserlogin==true}">
		     <%@include file='./include/addStudent.jsp' %>
		  </c:if>
		  <c:if test="${userClickOnallStudent==true}">
		     <%@include file='./include/allStudents.jsp' %>
		  </c:if>
		  	</div>
	 </div>
 </div>
</body>
</html>