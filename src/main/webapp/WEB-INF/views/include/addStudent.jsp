
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form:form action="${contextRoot}/save"  modelAttribute="student" >

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


</form:form>