<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Admin page</title>
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
        <a class="nav-link" href="/adminregister">Add Admin Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/patientlist">ViewPatientList</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/listadmins">ViewAdminList</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Main">Mainpage</a>
      </li>
      
     
    </ul>
  </div>
  
</nav>
<br><br>
<c:choose>
<c:when test="${mode=='MODE_ADMINHOME' }">
<div class="container" id="homediv">
  <div class="jumbotron text-center">
  <h1>Welcome to Admin Home page<h1><br>
  </div>
  </div>
  </c:when>
  <c:when test="${mode=='MODE_ADMINREGISTER' }"> 
 
  <div class="container">
<div class="row">
<div class = "col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
<h1 class = "text-center">Register for New Admin</h1>
<div class = "card-body">
<form method="POST" action="saveadmin">
<input type="hidden" name="id" value="${admin.adminid}"/>
<div class="form-group">
<label>Name</label>
<input type="text" name="adminname" value="${admin.adminname}" class="form-control" placeholder="Enter name">
</div>
<div class="form-group">
<label>Contact No</label>
<input type="text" name="contactno" value="${admin.contactno}" class="form-control" placeholder="Enter contactno">
</div>
<div class="form-group">
<label>Email</label>
<input type="email" name="email" value="${admin.email}" class="form-control" placeholder="Enter email">
</div>
<div class="form-group">
<label>Password</label>
<input type="password" name="password" value="${admin.password }" class="form-control" placeholder="Enter password">
</div>
<div class = "box-footer">
<button type ="submit" class="btn btn-primary">Submit</button>
</div>
</form>
</div></div ></div></div>
</c:when>
<c:when test="${mode=='LIST_ADMINS'}">
<div class="container text-center">
<div class = "row">
<h1>Admin List</h1>
<hr>
</div>
<table class = "table table-striped table-bordered">
<thead class = "table-dark">
    <tr>
      <th>Admin Id</th>
      <th>Admin Name</th>
      <th>Contact No</th>
      <th>Email</th>
      <th>Password</th>
      <th>Actions</th>
      
    </tr>
  </thead>
  <tbody>
    <c:forEach var = "admin" items="${admins}">
    <tr>
      <td>${admin.adminid}</td>
      <td>${admin.adminname}</td>
      <td>${admin.contactno}</td>
      <td>${admin.email}</td>
      <td>${admin.password}</td>
      <td>
      <a href="/deleteadmin?adminid=${admin.adminid}" class="btn btn-danger">Delete</a> 
       <a href="/edit?adminid=${admin.adminid}" class="btn btn-primary">Update</a> 
      
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