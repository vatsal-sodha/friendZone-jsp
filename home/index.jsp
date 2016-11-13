<!DOCTYPE html>
<html>
<head>
	<title>Home Page</title>

	<!-- links to bootstrap & jQuery -->
	<script src="../js/jquery-3.1.0.min.js"></script>
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/bootstrap-theme.min.css"> 
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/home.js"></script>
	<link rel="stylesheet" type="text/css" href="../css/home.css">
	
</head>
<body>
	
<nav class="navbar navbar-fixed-top coloring" >
		<div class="navbar-header">
			<a class="navbar-brand" href="#" onclick="#profile">Friend Zone</a>
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#openNav" aria-expanded="false" id="expansion"><span id="targetArea" aria-hidden="true"></span></button>
		</div>
	<div class="container-fluid collapse navbar-collapse" id="openNav">
		<ul class="nav navbar-nav">
			<li class="active"><a href="index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
			<li><a data-toggle="modal" data-target="#followingWindow"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> Following </a></li>
		</ul>
		<form class="navbar-form navbar-left" method="get" action="search.php">
			<input type="text" class="form-control" name="q" placeholder="Search for...">
          	<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
        </form>
		<ul class="nav navbar-nav navbar-right">

			<li><a href="#" data-toggle="modal" data-target="#writeWindow"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Write a Post</a></li>
			<li><a href="index.php?logout"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Log Out</a></li>
		</ul>
	</div>
</nav>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@ include file="../classes.jsp" %>
<%@page import="java.util.*" %>
<% 
	String userName="sodha";
	Users user = new Users();
	ArrayList<UserProfile> al  = new ArrayList<UserProfile>();
	al= user.getProfileByUserName(userName);
	Iterator itr=al.iterator();
	 while(itr.hasNext()){  
            UserProfile u=(UserProfile)itr.next();  
            System.out.println(u.firstName+" ");  
        }  
	//System.out.println(al.size());

%>
</body></html>