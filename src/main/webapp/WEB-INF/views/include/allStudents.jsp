
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<h3>All Students</h3>
<%-- <Table  class="table table-striped table-borderd" i>
	<tr>
		<th scope="col">Id</th>
		<th scope="col">Name</th>
		<th scope="col">Address</th>
		<th scope="col">Contact</th>
		<th scope="col">Email</th>
		<th scope="col">Action</th>
	</tr>
	<c:forEach var="s" items="${slist}">
		<tr>
			<td>${s.id}</td>
			<td>${s.name}</td>
			<td>${s.address}</td>
			<td>${s.contact}</td>
			<td>${s.email}</td>
			<td></td>
		</tr>
	</c:forEach>
</Table>  --%>


        <table id="exampleTable" class="table table-striped table-bordered" style="">
            <thead id="thead">
            <tr style="background-color: #1573ff">
                <th>ID</th>
                <th>Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody id="tbody">
            </tbody>
            <tfoot>
            <tr style="background-color: #1573ff">
                 <th>ID</th>
                <th>Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
            </tfoot>
        </table>

