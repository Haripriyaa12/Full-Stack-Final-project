<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Home page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Doctor Appointment Booking System</a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/userlist">ViewUserList</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Main">Mainpage</a>
      </li>
      
     
    </ul>
  </div>
  
</nav>
<br><br>
<c:choose>
<c:when test="${mode=='MODE_HOME' }">
<div class="container" id="homediv">
  <div class="jumbotron text-center">
  <h1>Welcome to Home page<h1><br>
  <h3>Click on Login/Register to Continue</h3>
  </div>
  </div>
  </c:when>
 <c:when test="${mode=='LIST_USERS'}">
<div class="container text-center">
<div class = "row">
<h1>Users List</h1>
<hr>
</div>
<table class = "table table-striped table-bordered">
<thead class = "table-dark">
    <tr>
      <th>User Id</th>
      <th>User Name</th>
      <th>Password</th>
      <th>Role</th>
      <th>Actions</th>
      
    </tr>
  </thead>
  <tbody>
    <c:forEach var = "user" items="${users}">
    <tr>
      <td>${user.userid}</td>
      <td>${user.username}</td>
      <td>${user.password}</td>
      <td>${user.role}</td>
      <td>
      <a href="/deleteuser?userid=${user.userid}" class="btn btn-danger">Delete</a> 
       <a href="/edit?userid=${user.userid}" class="btn btn-primary">Update</a> 
      
      </td>
      </tr>
  </c:forEach>     
   </tbody>
 </table>
</div>
</c:when>

 </c:choose>
  
  

</body>
</html>