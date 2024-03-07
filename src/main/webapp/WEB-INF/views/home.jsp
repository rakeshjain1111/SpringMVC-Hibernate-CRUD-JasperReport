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
<link href="${css}/bootstrap.min.css" rel ="stylesheet">
<link href="${css}/datatables.min.css" rel ="stylesheet" >
 <script src="${js}/script.js"></script>

    <script src="https://code.jquery.com/jquery-3.7.1.js" ></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"  />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/js/all.min.js" ></script>
</head>
<body>

 
 <div class="container mt-5 ">
        <div class="row">
            <div class="col-3" style="background-color: rgb(228, 233, 239);">
                <div class="row">
                    <div class="col" style="text-align: center;  font-weight: bold;  font-size: 25px;  color: green">
                          Menu
                    </div>
                </div>
                <div class="row">
                    <div class="col" style="text-align: center;
                            padding: 15px;">
                         <a href="${contextRoot }/slist" class="btn btn-primary d-block mb-2 mt-2"><i class="fa-solid fa-users"></i> All Students</a>
    	    			 <a href="${contextRoot }/"  class="btn btn-primary d-block mb-2"><i class="fa-solid fa-user-plus"></i> Add Student </a>
   	    			 <a href="${contextRoot }/report"  class="btn btn-primary d-block mb-2"><i class="fa-solid fa-user-plus"></i> All Student PDF </a>
    	    			 
                    </div>
                </div>
            </div>
            <div class="col-9">
                <div class="row" style="height: 50px">
                    <div class="col" style="text-align: center;   background-color: blue; font-weight: bold ; font-size: 25px; color: white">
                    		Spring MVC 5 + Hibernate 5 + MySQL (CRUD)
                    </div>
                </div>
                <div class="row">
                    <div class="col" style="background-color: #FFB6C1;">
                      	  <c:if test="${clickOnuserlogin==true}">
		    						 <%@include file='./include/addStudent.jsp' %>
		 				 </c:if>
						  <c:if test="${userClickOnallStudent==true}">
		     						<%@include file='./include/allStudents.jsp' %>
		 					 </c:if>
                    </div>
                </div>
                <div class="row">
                    <div class="col" style="background-color: #E6FFE3 ;">
                     
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>