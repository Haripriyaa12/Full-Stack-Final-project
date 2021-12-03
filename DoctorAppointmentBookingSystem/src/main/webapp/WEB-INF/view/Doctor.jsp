<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Doctor page</title>
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
        <a class="nav-link" href="/registerdoctor">Add Doctor Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/listdoctor">View Doctorlist</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Main">Mainpage</a>
      </li>
      
     
    </ul>
  </div>
  
</nav>
<br><br>

<c:choose>
<c:when test="${mode=='MODE_DOCTORHOME' }">
<div class="container" id="homediv">
  <div class="jumbotron text-center">
  <h1>Welcome to Doctor Home page<h1><br>
  </div>
  </div>
  </c:when>
  <c:when test="${mode=='MODE_DOCTORREGISTER' }"> 
 
  <div class="container">
<div class="row">
<div class = "col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
<h1 class = "text-center">Register for New Doctor</h1>
<div class = "card-body">
<form method="POST" action="savedoctor">
<input type="hidden" name="id" value="${doctor.doctorid}"/>
<div class="form-group">
<label>DoctorName</label>
<input type="text" name="doctorname" value="${doctor.doctorname}" class="form-control" placeholder="Enter name">
</div>
<div class="form-group">
<label>Speciality</label>
<input type="text" name="speciality" value="${doctor.speciality}" class="form-control" placeholder="Enter speciality">
</div>
<div class="form-group">
<label>Location</label>
<input type="text" name="location" value="${doctor.location}" class="form-control" placeholder="Enter location">
</div>
<div class="form-group">
<label>HospitalName</label>
<input type="text" name="hospitalname" value="${doctor.hospitalname}" class="form-control" placeholder="Enter hospitalname">
</div>
<div class="form-group">
<label>Mobile No</label>
<input type="text" name="mobileno" value="${doctor.mobileno}" class="form-control" placeholder="Enter mobileno">
</div>
<div class="form-group">
<label>Email</label>
<input type="email" name="email" value="${doctor.email}" class="form-control" placeholder="Enter email">
</div>
<div class="form-group">
<label>Password</label>
<input type="password" name="password" value="${doctor.password}" class="form-control" placeholder="Enter password">
</div>
<div class="form-group">
<label>Charge per visit</label>
<input type="text" name="chargedpervisit" value="${doctor.chargedpervisit}" class="form-control" placeholder="Enter Visiting charge">
</div>


<div class = "box-footer">
<button type ="submit" class="btn btn-primary">Submit</button>
</div>
</form>
</div></div ></div></div>
</c:when>
<c:when test="${mode=='LIST_DOCTOR'}">
<div class="container text-center">
<div class = "row">
<h1>Doctor List</h1>
<hr>
</div>
<table class = "table table-striped table-bordered">
<thead class = "table-dark">
    <tr>
      <th>Doctor Id</th>
      <th>Doctor Name</th>
      <th>Speciality</th>
      <th>Location</th>
       <th>HospitalName</th>
        <th>Mobileno</th>
         <th>Email</th>
      <th>Password</th>
       <th>Charge Per Visit</th>
      <th>Actions</th>
      
    </tr>
  </thead>
  <tbody>
    <c:forEach var = "doctor" items="${doctors}">
    <tr>
      <td>${doctor.doctorid}</td>
      <td>${doctor.doctorname}</td>
      <td>${doctor.speciality}</td>
      <td>${doctor.location}</td>
      <td>${doctor.hospitalname}</td>
      <td>${doctor.mobileno}</td>
      <td>${doctor.email}</td>
      <td>${doctor.password}</td>
      <td>${doctor.chargedpervisit}</td>
      
      <td>
      <a href="/deletedoctor?doctorid=${doctor.doctorid}" class="btn btn-danger">Delete</a> 
       <a href="/update?doctorid=${doctor.doctorid}" class="btn btn-primary">Update</a> 
      
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