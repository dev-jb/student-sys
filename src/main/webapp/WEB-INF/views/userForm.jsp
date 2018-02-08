<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4" style="padding: 0px 0px 0px 0px">
				<div class="jumbotron">
					<h3>User Form</h3>
					<form:errors path="user.*" cssStyle="color:red"></form:errors>

					<form:form action="user_saves" method="post" modelAttribute="user"
						enctype="multipart/form-data">
						<div class="form-group">
							<form:label path="firstName" class="bmd-label-floating">First Name</form:label>
							<form:input path="firstName" class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="lastName" class="bmd-label-floating">Last Name</form:label>
							<form:input path="lastName" class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="address.permanentAddress" class="bmd-label-floating">Permanent Address</form:label>
							<form:input path="address.permanentAddress" class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="address.temporaryAddress" class="bmd-label-floating">Temporary Address</form:label>
							<form:input path="address.temporaryAddress" class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="address.cityName" class="bmd-label-floating">City Name</form:label>
							<form:input path="address.cityName" class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="address.countryName" class="bmd-label-floating">Country Name</form:label>
							<form:input path="address.countryName" class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="email" class="bmd-label-floating">Email</form:label>
							<form:input path="email" type="email" class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="password" class="bmd-label-floating">Password</form:label>
							<form:input path="password" type="password" class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="userName" class="bmd-label-floating">User Name</form:label>
							<form:input path="userName" class="form-control" />
						</div>
						<div class="radio">
							<form:label path="gender" class="bmd-label-floating">Gender</form:label>
							<form:radiobuttons path="gender" items="${genderList}" />
						</div>
						<div class="form-group">
							<form:label path="dob" class="bmd-label-floating">Date of Birth</form:label>
							<form:input path="dob" type="date" class="form-control" />
						</div>
						<div class="model-footer">
							<button type="submit" class="btn btn-raised btn-primary">Submit</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<div class="col-sm-4"></div>
	</div>
</body>
</html>