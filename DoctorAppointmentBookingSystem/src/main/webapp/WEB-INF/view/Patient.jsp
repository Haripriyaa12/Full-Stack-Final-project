<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Patient page</title>
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
        <a class="nav-link" href="/registerpatient">Add patient Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/listpatients">View patientlist</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Main">Mainpage</a>
      </li>
      
     
    </ul>
  </div>
  
</nav>
<br><br>

<c:choose>
<c:when test="${mode=='MODE_PATIENTHOME' }">
<div class="container" id="homediv">
  <div class="jumbotron text-center">
  <h1>Welcome to Patient Home page<h1><br>
  </div>
  </div>
  </c:when>
  <c:when test="${mode=='MODE_PATIENTREGISTER' }"> 
 
  <div class="container">
<div class="row">
<div class = "col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
<h1 class = "text-center">Register for New Patient</h1>
<div class = "card-body">
<form method="POST" action="savepatient">
<input type="hidden" name="id" value="${patient.patientid}"/>
<div class="form-group">
<label>Patient Name</label>
<input type="text" name="patientname" value="${patient.patientname}" class="form-control" placeholder="Enter name">
</div>
<div class="form-group">
<label>Mobile No</label>
<input type="text" name="mobileno" value="${patient.mobileno}" class="form-control" placeholder="Enter mobileno">
</div>
<div class="form-group">
<label>Email</label>
<input type="email" name="email" value="${patient.email}" class="form-control" placeholder="Enter email">
</div>
<div class="form-group">
<label>Password</label>
<input type="password" name="password" value="${patient.password}" class="form-control" placeholder="Enter password">
</div>
<div class="form-group">
<label>Blood Group</label>
<input type="text" name="bloodgroup" value="${patient.bloodgroup}" class="form-control" placeholder="Enter bloodgroup">
</div>
<div class="form-group">
<label>Gender</label>
<input type="text" name="gender" value="${patient.gender}" class="form-control" placeholder="Enter gender">
</div>
<div class="form-group">
<label>Age</label>
<input type="text" name="age" value="${patient.age}" class="form-control" placeholder="Enter age">
</div>
<div class="form-group">
<label>Address</label>
<input type="text" name="address" value="${patient.address}" class="form-control" placeholder="Enter address">
</div>

<div class = "box-footer">
<button type ="submit" class="btn btn-primary">Submit</button>
</div>
</form>
</div></div ></div></div>
</c:when>
<c:when test="${mode=='LIST_PATIENT'}">
<div class="container text-center">
<div class = "row">
<h1>Patient List</h1>
<hr>
</div>
<table class = "table table-striped table-bordered">
<thead class = "table-dark">
    <tr>
      <th>Patient Id</th>
      <th>Patient Name</th>
      <th>Mobile No</th>
      <th>Email</th>
       <th>Password</th>
        <th>Blood Group</th>
         <th>Gender</th>
      <th>Age</th>
       <th>Address</th>
      <th>Actions</th>
      
    </tr>
  </thead>
  <tbody>
    <c:forEach var = "patient" items="${patients}">
    <tr>
      <td>${patient.patientid}</td>
      <td>${patient.patientname}</td>
      <td>${patient.mobileno}</td>
      <td>${patient.email}</td>
      <td>${patient.password}</td>
      <td>${patient.bloodgroup}</td>
      <td>${patient.gender}</td>
      <td>${patient.age}</td>
      <td>${patient.address}</td>
      
      <td>
      <a href="/deletepatient?patientid=${patient.patientid}" class="btn btn-danger">Delete</a> 
       <a href="/update?patientid=${patient.patientid}" class="btn btn-primary">Update</a> 
      
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