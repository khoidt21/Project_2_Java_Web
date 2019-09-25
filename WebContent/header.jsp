<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no"
>
<meta name="description" content="">
<meta name="author" content="">
<title>Course</title>
<!-- Custom fonts for this theme -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css"
>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css"
>
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css"
>
<!-- Theme CSS -->
<link href="css/freelancer.min.css" rel="stylesheet">
</head>
<body id="page-top">
	<!-- Navigation -->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav"
	>
		<div class="container">
			<%
				if (session.getAttribute("username") == null) {
					response.sendRedirect("login.jsp");
				}
				String username = (String) session.getAttribute("username");
			%>
			<button
				class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation"
			>
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<%
						if (username !=null && username.equals("system")) {
					%>
					<li class="nav-item mx-0 mx-lg-1" id="menu-item"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="page1.jsp"
					>Page 1</a></li>
					<li class="nav-item mx-0 mx-lg-1" id="menu-item"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="page2.jsp"
					>Page 2</a></li>
					<%
						}
					%>
					<%
						if (username !=null && username.equals("admin")) {
					%>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="welcomepage.jsp"
					>Welcome Page</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="courseform.jsp"
					>Course</a></li>
					
					
					<%
						}
					%>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="LogoutServlet"
					>SIGN OUT</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="#"
					>ACCOUNT : <%=username%></a></li>
				</ul>
			</div>
		</div>
	</nav>