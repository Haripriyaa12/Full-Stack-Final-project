<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Appointment System</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Doctor Appointment Booking System</a>
  <br><br>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/login">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Register">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Home">User</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/PatientHome">Patient</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/AdminHome">Admin</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/DoctorHome">Doctor</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/AppointmentHome">Appointment</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/AvailabilityHome">Availability Update</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/FeedbackHome">Feedback</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/Main">Logout</a>
      </li>
      
     
    </ul>
  </div>
  
</nav>
<br><br>
<c:choose>
<c:when test="${mode=='MODE_MAIN' }">
<div class="container" id="homediv">
<div class="jumbotron text-center">
<h1>Click on Login/Register to Continue</h1><br><br>
<h6>After Logged in<br>If you are a patient,click on patient and add your details and Add appointment</h6><br>
  <h6>If you are a doctor, click on doctor and add availability status</h6><br>
  <h6>If you are an admin, click on admin and add manage appointments</h6>
  </div></div>
  </c:when>
  
  <c:when test="${mode=='MODE_REGISTER' }"> 
 
  <div class="container">
<div class="row">
<div class = "col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
<h1 class = "text-center">Register for New User</h1>
<div class = "card-body">
<form method="POST" action="saveuser">
<input type="hidden" name="id" value="${user.userid}"/>
<div class="form-group">
<label>Name</label>
<input type="text" name="username" value="${user.username }" class="form-control" placeholder="Enter Username">
</div>
<div class="form-group">
<label>Password</label>
<input type="password" name="password" value="${user.password }" class="form-control" placeholder="Enter password">
</div>
<div class="form-group">
<label>Role</label>
<input type="text" name="role" value="${user.role }" class="form-control" placeholder="Enter Admin/Patient/Doctor">
</div>
<div class = "box-footer">
<button type ="submit" class="btn btn-primary">Submit</button>
</div>
</form>
</div></div ></div></div>
</c:when>
<c:when test="${mode=='MODE_LOGIN'}">
<div class="container">
<div class="row">
<div class = "col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
<h1 class = "text-center">Login User</h1>
<div class = "card-body">
<form method="POST" action="/login-user">
<c:if test="${not empty error }">
<div class="alert alert-danger" >
<c:out value="${error}"></c:out>
</div>
</c:if>
<div class="form-group">
<label>Username</label>
<input type="text" name="username" value="${user.username}" class="form-control">
</div>
<div class="form-group">
<label>Password</label>
<input type="password" name="password" value="${user.password}" class="form-control">
</div>
<div class = "box-footer">
<button type ="submit" class="btn btn-primary">Login</button>
</div>
</form>
</div></div ></div></div>
</c:when>
  </c:choose>
  

</body>
</html>