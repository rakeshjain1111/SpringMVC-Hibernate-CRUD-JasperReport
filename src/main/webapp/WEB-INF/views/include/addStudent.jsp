
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%-- <form:form action="${contextRoot}/save"  modelAttribute="student" >

                <h3>Student Registration</h3>
	<table>
		
			
			 ${student.id}
			<form:hidden path="id"/>
		
		<tr>
			<td>Name</td>
			<td><form:input path="name"/></td>
		</tr>
		<tr>
			<td>Fathers Name</td>
			<td><form:input path="contact"/></td>
		</tr>
		
		<tr>
			<td>Address</td>
			<td><form:input path="address"/></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><form:input path="email"/></td>
		</tr>
		
		
		<tr>
		    <td colspan="2"><input type="submit" value="SUBMIT"> </td>
		</tr>

	</table>


</form:form> --%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${contextRoot}-${title}</title>
<link href="/resources/css/bootstrap.min.css"/>
<link href="/resources/jquery.js"/>
</head>
<body>
<div class="container">
  <div class="col-md-offset-2 col-md-7">
   <h2 class="text-center">Spring MVC 5 + Hibernate 5 + JSP + MySQL
    Example</h2>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Add Customer</div>
    </div>
    <div class="panel-body">
     <form:form action="${contextRoot}/save" cssClass="form-horizontal"
     modelAttribute="student">

      <!-- need to associate this data with customer id -->
      <form:hidden path="id" />

      <div class="form-group">
       <label for="firstname" class="col-md-3 control-label">First
        Name</label>
       <div class="col-md-9">
        <form:input path="name" cssClass="form-control" />
       </div>
      </div>
      <div class="form-group">
       <label for="name" class="col-md-3 control-label">Last
        Name</label>
       <div class="col-md-9">
        <form:input path="address" cssClass="form-control" />
       </div>
      </div>

      <div class="form-group">
       <label for="email" class="col-md-3 control-label">Email</label>
       <div class="col-md-9">
        <form:input path="contact" cssClass="form-control" />
       </div>
      </div>
      <div class="form-group">
       <label for="contact" class="col-md-3 control-label">Email</label>
       <div class="col-md-9">
        <form:input path="contact" cssClass="form-control" />
       </div>
      </div>

      <div class="form-group">
       <!-- Button -->
       <div class="col-md-offset-3 col-md-9">
        <form:button cssClass="btn btn-primary">Submit</form:button>
       </div>
      </div>

     </form:form>
    </div>
   </div>
  </div>
 </div>
  <script type="text/javascript" src="/resources/js/bootstrap.bundle.js"/>
</body>
</html>