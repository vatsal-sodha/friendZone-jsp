<?php
require_once 'config/connect.php';
require_once 'config/classes.php';
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Welcome to Friend Zone !</title>

	<!-- links to bootstrap & jQuery -->
	<script src="js/jquery-3.1.0.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css"> 
	<script src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<script type="text/javascript">
		function checkPassword(){
			var pas1 = document.getElementById("pswd").value;
			var pas2 = document.getElementById("repswd").value;
			if(pas1 != pas2) {
				alert("Password do not match");
				return false;
			}
			else{
				document.getElementById('btn').value = "ready";
				return true;
			} 
		}
	</script>
</head>
<body>
<nav class="navbar" >
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Friend Zone</a>
		</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="" data-toggle="modal" data-target="#signUpWindow"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Sign Up</a></li>
				<li><a href="" data-toggle="modal" data-target="#loginWindow"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Login</a></li>
			</ul>
	</div>
</nav>
<div class="modal fade" id="loginWindow">
	<div class="modal-dialog">
	<div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">x</button>
		<h3> <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Login</h3>
	</div>
	<div class="modal-body">
		<form action="" method="POST" role="form">
			<input type="text" name="userName1" class="form-control" required="required" placeholder="User Name">
			<input type="password" name="password1" class="form-control" required="required" placeholder="Password">
			<button type="submit" class="btn btn-primary" value="login" name="login">Submit</button>
		</form>
	</div>
	</div>
	</div>
</div>
<div class="modal fade" id="signUpWindow">
	<div class="modal-dialog">
	<div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">x</button>
		<h3> <span class="glyphicon glyphicon-globe" aria-hidden="true"></span> Join Us! </h3>
	</div>
	<div class="modal-body">
		<form action="" method="POST" onsubmit="return checkPassword();">
	<div class="row">
		<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
			<input type="text" name="firstName" class="form-control" required="required" placeholder="First Name">
		</div>
		<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
			<input type="text" name="lastName" class="form-control" required="required" placeholder="Last Name">
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<input type="text" name="userName" class="form-control" required="required" placeholder="User Name">
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<input type="password" name="password" id="pswd" class="form-control" required="required" placeholder="Password">
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<input type="password" id="repswd" class="form-control" required="required" placeholder="Retype Password">
		</div>
	</div>
	<div class="row">
		<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
			<button type="submit" value="signup" class="btn btn-primary" id="btn" name="signup">Sign Up</button>
		</div>
	</div>
	</form>
	</div>
	</div>
	</div>
</div>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="Users" %>

<%

		String isit=request.getParameter("login");
		if(isit !=null && isit.equals("login")){
		String userName=request.getParameter("userName1");
		String password=request.getParameter("password1");

		out.println(userName);
		Users user = new Users();
		boolean isLogin;
		isLogin =  user.isLogin(userName,password);
		if(isLogin == true)
		 	{
		 	String redirectURL = "http://localhost:8080/friendzone/home/index.php";
        	response.sendRedirect(redirectURL);
		 	}
		else
		{
		out.println("<script type='text/javascript'>alert('Wrong Credentials');window.location.href = 'index.php';</script>");
		}
	}

%>
</body>
</html>
