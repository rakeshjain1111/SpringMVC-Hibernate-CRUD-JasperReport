window.onload = () => {
	var table = document.getElementById('tbody');
	/*fetch("https://dummyjson.com/users")*/
	fetch("http://localhost:8080/SpringMVC-CRUD/studentList")
		.then(function(res) {
			return res.json();
			console.log(res.json());
		})
		.then(function(data) {
			for (var i = 0; i < data.length; i++) {
				console.log(data[i]);
				console.log("hello");
				let student = data[i];
				let tab = `<tr>
                        <td>${student.id}</td>
                        <td>${student.name}</td>
                        <td>${student.address}</td>
                        <td>${student.contact}</td>
                        <td>${student.email}</td>
                        <td>
                               <button type="button" class="text-white btn-primary btn" onclick=edit('/SpringMVC-CRUD/studentList/update?id=${student.id}')><i class="fa-solid fa-pen "></i></button>
                               <button type="button" class="text-white btn-danger btn" onclick=deleteStu('/SpringMVC-CRUD/studentList/delete?id=${student.id}')><i class="fa-solid fa-trash"></i></button>
                               <button type="button" class="text-white btn-success btn" onclick=show('/SpringMVC-CRUD/studentList/pdf?id=${student.id}')><i class="fa-solid fa-file-pdf"></i></button>  	
                        </td>
                        
                        </tr>
                `
				table.innerHTML += tab;
			}
			$('#exampleTable').DataTable({
				"data": data.students,
				"columns": [
					{ "data": "id" },
					{ "data": "name" },
					{ "data": "address" },
					{ "data": "contact" },
					{ "data": "email" },
					{ "data": "Action" },
					{ "data": "Pdf" }
				]


			})
		})
}


function edit(Url) {
	if (confirm("Are you sure ?")) {
		document.location = Url;
	}
}





function deleteStu(delUrl) {
	
	if (confirm("Are You Sure ? Record cannot recover after delete")) {
		document.location = delUrl;
		alert("Record Deleted Successfully");
	}
}

function show(url){
	document.location =url;
}

/*<a href="/SpringMVC-CRUD/studentList/update?id=${student.id}" class="text-white btn-primary btn"><i class="fa-solid fa-pen "></i></a>
<a href="/SpringMVC-CRUD/studentList/delete?id=${student.id}"  class="text-white btn-danger btn"><i class="fa-solid fa-trash"></i></a>
<a href="/SpringMVC-CRUD/singlereport/${student.id}"  class="text-white btn-success btn" target="_"><i class="fa-solid fa-file-pdf"></i></a>*/
