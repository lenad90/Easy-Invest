<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap.min.css" rel="stylesheet">
<title>Update a strategy post</title>
</head>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Easy Invest</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="LandingPage.jsp">Home
            <span class="visually-hidden">landingPage</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="findusers">Users</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="findstrategyposts">Strategy Post</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="findStocks">Stock Recommendations</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="materialfind">Educational Materials</a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="#"></a>
        </li>
      </ul>
    </div>
  </div>
</nav>


<body>
	<center><br/>
        <h2>Update a Previous Strategy Post</h2>
        <form action="strategypostupdate" method="put">
                <p>
                        <label for="postId">Post ID</label>
                        <input id="postId" name="postId" value="${fn:escapeXml(param.postId)}">
                </p>

                <p>
                        <label for="content">New content</label>
                        <input id="content" name="content" value="" rows="3">
<!--                         <textarea class="form-control" id="content" name="content" value="" rows="3" spellcheck="true"></textarea>
 -->                </p>

                <p>
 						<input type="submit" value = "update" class="btn btn-lg btn-warning">
                </p>
        </form>
        <br/>
        <p>
                <span id="successMessage"><b>${messages.success}</b></span>
        </p>
        <br/>
	
	<h3>
		<div id="StrategyPostCreate"><a href="strategypostcreate">Create a New Strategy Post</a></div>
	</h3>
		<br/>
	<h4>
		<div id="FindStrategyPosts"><a href="findstrategyposts">Search for Strategy Posts by User Name</a></div>
	</h4>
		<br/>
	<h6>
	<div id="StrategyPostDelete"><a href="strategypostdelete">Delete Your Previous Strategy Post</a></div>
	</h6>	
		<br/><br/>        
        
        
	</center>
</body>

</html>