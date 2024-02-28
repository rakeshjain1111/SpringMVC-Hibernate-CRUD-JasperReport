
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <form:form action="${contextRoot}/save" modelAttribute="student">

	<h3>Student Registration</h3>
	<table>

		${student.id}
		<form:hidden path="id" />

		<tr>
			<td>Name</td>
			<td><form:input path="name" /></td>
		</tr>
		<tr>
			<td>Fathers Name</td>
			<td><form:input path="contact" /></td>
		</tr>

		<tr>
			<td>Address</td>
			<td><form:input path="address" /></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><form:input path="email" /></td>
		</tr>


		<tr>
			<td colspan="2"><input type="submit" value="SUBMIT"></td>
		</tr>

	</table>


</form:form> --%>


		
		   <div class="formbox  border  border-primary  p-3 ">
		   <h3 class="text-center">ADD STUDENT</h3>
			<form:form action="${contextRoot}/save" modelAttribute="student">
				<div class="mb-3">
					<label for="exampleInputName" class="form-label">Name</label> 
					<form:input path="name" class="form-control" id="exampleInputName" aria-describedby="nameHelp" placeholder="Enter Your Full Name." />
				</div>
				
				<div class="mb-3">
					<label for="exampleInputContact" class="form-label">Contact</label> 
					<form:input path="contact" class="form-control" id="exampleInputContact" aria-describedby="contactHelp" placeholder="Enter Your Contact Number" />
				</div>
				
				<div class="mb-3">
					<label for="exampleInputAddress" class="form-label">Address</label> 
					<form:input path="address" class="form-control" id="exampleInputEmail1" aria-describedby="addressHelp" placeholder="Enter Your Address" />
				</div>
				
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Email</label> 
					<form:input path="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Email." />
				</div>

				<div class="mb-3 form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Check me out</label>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form:form>
		</div>
	
	
