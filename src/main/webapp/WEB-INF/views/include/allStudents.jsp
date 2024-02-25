<%-- 
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<h3>All Students</h3>
<Table>
	<tr>
		<td>Id</td>
		<td>Name</td>
		<td>Address</td>
		<td>Contact</td>
		<td>Email</td>
		<td>Action</td>
	</tr>
	<c:forEach var="s" items="$[listStudent]">
		<tr>
			<td>${id}</td>
			<td>${name}</td>
			<td>${address}</td>
			<td>${contact}</td>
			<td>${email}</td>
			<td></td>
		</tr>
	</c:forEach>
</Table> --%>