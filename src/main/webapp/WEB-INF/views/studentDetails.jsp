<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<div class="form-group" align="right" style="margin-top: 20px;">
			<a href="student_form">
				<button type="submit" class="btn btn-primary btn-raised">New
					Student</button>
			</a>
		</div>
		<div class="jumbotron" style="padding: 0rem 0rem">
			<span style="color: red">${errorMessage }</span> <span
				style="color: green">${successMessage }</span>
			<c:if test="${!empty studentDetails }">
				<table class="table table-responisve">
					<thead class="thead-default">
						<tr>
							<th>S.N</th>
							<th>Id</th>
							<th>Student Name</th>
							<th>College Name</th>
							<th>Email</th>
							<th>Roll</th>
							<th>Gender</th>
							<th>Date of Birth</th>
							<th>Subject</th>
							<th>Department</th>
							<th>Image</th>
							<th colspan="2">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${studentDetails }" var="s" varStatus="d">
							<tr>
								<td>${d.count}</td>
								<td>${s.id }</td>
								<td>${s.studentName}</td>
								<td>${s.collegeName}</td>
								<td>${s.email}</td>
								<td>${s.roll}</td>
								<td>${s.gender}</td>
								<td>${s.dob}</td>
								<td>${s.subject}</td>
								<td>${s.department}</td>
								<td><img alt="profile image"
									src="image_display?id=${s.id }" width="50px" height="50px">
								</td>
								<td><a href="student_edit?id=${s.id }"><button
											type="submit" class="btn btn-raised btn-primary">Edit</button></a>
								</td>
								<td><a href="student_delete?id=${s.id }"><button
											type="submit" class="btn btn-raised btn-danger">Delete</button></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
		</div>
	</div>

</body>
</html>