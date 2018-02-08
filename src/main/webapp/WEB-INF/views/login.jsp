<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<title>Student Management System</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap-MDL -->
<link rel="stylesheet"
	href="resources/bootstrap-material-design/css/bootstrap-material-design.min.css">
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="resources/bootstrap-material-design/js/bootstrap-material-design.min.js"></script>

<script src="resources/popper/popper.js"></script>
<script type="text/javascript"
	src="resources/bootstrap-material-design/js/bootstrap-material-design.min.js"></script>
<script>
	$(document).ready(function() {
		$('body').bootstrapMaterialDesign();
	});
</script>

<link rel="stylesheet" type="text/css"
	href="resources/css/font-awesome.css">
<script>
	$(document).ready(function() {
		$('body').bootstrapMaterialDesign();
	});
</script>

<link rel="stylesheet" href="resources/css/mystyle.css">
<style type="text/css">
body, html {
	background-image: url("resources/image/img.jpg");
	/* background-image: url("C:/Users/DeadSkull/Documents/workspace-sts-3.9.0.RELEASE/StudentManagement/WebContent/image/college_graduate001-2.jpg"); */
}
</style>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		String uname = "";
		String password = "";

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals("uName")) {
					uname = cookies[i].getValue();
					System.out.println("Name is:" + uname);
				}
				if (cookies[i].getName().equals("password")) {
					password = cookies[i].getValue();
					System.out.println("Paswword is:" + password);
				}
			}
		}
		request.setAttribute("uName", uname);
		request.setAttribute("pswd", password);
	%>


	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<h3>Student Management System</h3>
			</div>
			<div class="col-sm-4"></div>

		</div>

		<div class="row">
			<div class="col-sm-4"></div>

			<div class="col-sm-4"
				style="background-color: white; padding-left: 0px; padding-right: 0px;">
				<div class="login-div">
					<div class="login-here">
						<label style="font-size: 40px; text-align: center; color: white;">Welcome!</label>
					</div>

				</div>
				<div class="login-form">
					<form action="login" method="post">
						<span style="color: red">${loginErrMessage}</span> <span
							style="color: red">${logoutMsg}</span> <span style="color: red">${loginFirst}</span>
						<span style="color: green">${emailSentMessage }</span> <span
							style="color: red">${emailNotFound }</span>

						<div class="form-group">
							<label for="formGroupExampleInput" class="bmd-label-floating">User
								Name</label> <input type="text" class="form-control"
								id="formGroupExampleInput" name="userName" value="${userName}"
								required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1" class="bmd-label-floating">Password</label>
							<input type="password" class="form-control"
								id="exampleInputPassword1" name="password" value="${password}"
								required="required"> <span class="bmd-help">Do
								not give your password to others.</span>
						</div>

						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox" name="chkbox"
									value="remembered"> Remember me
								</label>
							</div>
						</div>
						<div class="form-group" align="right">
							<button type="submit" class="btn btn-primary btn-raised">Submit</button>
						</div>

					</form>
				</div>
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal">Forgot Your Password?</button>
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">Forgot Your Password?</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>

							</div>
							<div class="modal-body">
								<form method="post" action="#">
									<div class="form-group">
										<label for="receipt-name">Email</label> <input type="text"
											class="form-control" id="email" name="email">

									</div>

									<button type="submit" class="btn btn-default">Send
										message</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4"></div>

		</div>
	</div>
</body>
</html>