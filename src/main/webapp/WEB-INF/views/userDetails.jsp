<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Details</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<div class="form-group" align="right" style="margin-top: 20px;">
			<a href="user_form">
				<button type="submit" class="btn btn-primary btn-raised">New
					User</button>
			</a>
		</div>
		<div class="jumbotron" style="padding: 0rem 0rem">
			<span style="color: red">${errorMessage }</span> <span
				style="color: green">${successMessage }</span>
			<c:if test="${!empty userDetails }">
				<table class="table table-responisve">
					<thead class="thead-default">
						<tr>
							<th>S.N</th>
							<th>Id</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Permanent Address</th>
							<th>City Name</th>
							<th>Email</th>
							<th>User Name</th>
							<th>Gender</th>
							<th>Date of Birth</th>
							<th colspan="2">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${userDetails }" var="u" varStatus="d">
							<tr>
								<td>${d.count}</td>
								<td>${u.id }</td>
								<td>${u.firstName}</td>
								<td>${u.lastName}</td>
								<td>${u.address.permanentAddress}</td>
								<td>${u.address.cityName}</td>
								<td>${u.email}</td>
								<td>${u.userName}</td>
								<td>${u.gender}</td>
								<td>${u.dob}</td>
								<td><a href="user_edit?id=${u.id }"><button
											type="submit" class="btn btn-raised btn-primary">Edit</button></a>
								</td>
								<td><a href="user_delete?id=${u.id }"><button
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