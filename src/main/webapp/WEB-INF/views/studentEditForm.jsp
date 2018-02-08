<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Student</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4" style="padding: 0px 0px 0px 0px">
				<div class="jumbotron">
					<h3>Update Form</h3>
					<form:form action="student_update" method="post"
						modelAttribute="student" enctype="multipart/form-data">

						<div class="form-group" style="margin-top: 20px;">
							<form:label path="id" class="bmd-label-floating">Id</form:label>
							<form:hidden path="id" class="form-control" />
						</div>

						<div class="form-group">
							<form:label path="studentName" class="bmd-label-floating">Student Name</form:label>
							<form:input path="studentName" class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="collegeName" class="bmd-label-floating">College Name</form:label>
							<form:input path="collegeName" class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="email" class="bmd-label-floating">Email</form:label>
							<form:input path="email" type="email" class="form-control" />
						</div>
						<div class="">
							<form:label path="gender" class="bmd-label-floating">Gender</form:label>
							<form:radiobuttons path="gender" items="${genderList}" />
						</div>
						<div class="">
							<form:label path="subject" class="bmd-label-floating">Subject</form:label>
							<form:checkboxes path="subject" items="${subjectList}" />
						</div>
						<div class="form-group">
							<form:label path="roll" class="bmd-label-floating">Roll No</form:label>
							<form:input path="roll" type="number" class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="department" class="bmd-label-floating">Department</form:label>
							<form:select path="department" items="${departmentList}"
								class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="dob" class="bmd-label-floating">Date of Birth</form:label>
							<form:input path="dob" type="date" class="form-control" />
						</div>
						<div class="form-group">
							<label for="file" class="bmd-label-floating">Upload Image</label>
							<input type="file" class="form-control"  data-input="false" name="file"
								value="${student.imageUrl}" />
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary btn-raised">Submit</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<div class="col-sm-4"></div>
	</div>
</body>
</html>