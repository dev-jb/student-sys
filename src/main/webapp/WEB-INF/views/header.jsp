<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="resources/css/mystyle.css">

<link rel="stylesheet" href="resources/bootstrap-material-design/css/bootstrap-material-design.min.css">
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/popper/popper.js"></script>
<script type="text/javascript"
	src="resources/bootstrap-material-design/js/bootstrap-material-design.min.js"></script>
	<link rel="stylesheet" type="text/css"
	href="resources/css/font-awesome.css">

	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="#">Navbar</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto nav nav-tabs">
			<li class="nav-item"><a class="nav-link active" href="home">Home</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">About Us</a>
			</li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false"><span
					class="caret"></span>Student</a>
				<div class="dropdown-menu">
					<a class="dropdown-item"
						href="student_list">View Student
						Details</a> <a class="dropdown-item" href="student_form">Add Student</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="user_list">User</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false"><span
					class="caret"></span>File</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Upload</a>
					<a class="dropdown-item" href="#">Download</a>
				</div></li>
			<li class="nav-item"><a class="nav-link"
				href="#">Send Mail</a></li>
			<li class="nav-item"><a class="nav-link"
				href="#">Inbox<span
					class="badge badge-light">${messageCount }</span></a></li>
		</ul>
		<ul class="navbar-nav mr-sm-2 nav nav-tabs nav">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false"><span
					class="caret"></span>${userName}</a>
				<div class="dropdown-menu" style="left: initial; right: 0;">
					<a class="dropdown-item" href="#">View
						Profile</a> <a class="dropdown-item" href="#" >Reset Password</a>

					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="logout">Logout</a>
				</div></li>
		</ul>
	</div>
</nav>
	