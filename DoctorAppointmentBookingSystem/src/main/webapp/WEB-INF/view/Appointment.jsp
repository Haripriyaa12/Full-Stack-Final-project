<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Appointment page</title>
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
        <a class="nav-link" href="/appointmentregister">Add Appointment Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/listappointment">ViewAppointmentList</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Main">Mainpage</a>
      </li>
      
     
    </ul>
  </div>
  
</nav>
<br>
<c:choose>
<c:when test="${mode=='MODE_APPOINTMENTHOME' }">
<div class="container" id="homediv">
  <div class="jumbotron text-center">
  <h1>Welcome to Appointment Home page<h1><br>
  </div>
  </div>
  </c:when>
  <c:when test="${mode=='MODE_APPOINTMENTREGISTER' }"> 
 
  <div class="container">
<div class="row">
<div class = "col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
<h1 class = "text-center">Register for New Appointment</h1>
<div class = "card-body">
<form method="POST" action="saveappointment">
<input type="hidden" name="id" value="${appointment.appointmentid}"/>
<div class="form-group">
<label>Patient</label>
<input type="text" name="patient" value="${appointment.patient}" class="form-control" placeholder="Enter patient">
</div>
<div class="form-group">
<label>Doctor</label>
<input type="text" name="doctor" value="${appointment.doctor}" class="form-control" placeholder="Enter doctor">
</div>
<div class="form-group">
<label>AppointmentDate</label>
<input type="text" name="appointmentdate" value="${appointment.appointmentdate}" class="form-control" placeholder="Enter appdate">
</div>
<div class="form-group">
<label>Appointmentstatus</label>
<input type="text" name="appointmentstatus" value="${appointment.appointmentstatus}" class="form-control" placeholder="Enter appstatus">
</div>
<div class="form-group">
<label>Remarks</label>
<input type="text" name="remarks" value="${appointment.remarks}" class="form-control" placeholder="Enter remarks if any">
</div>

<div class = "box-footer">
<button type ="submit" class="btn btn-primary">Submit</button>
</div>
</form>
</div></div ></div></div>
</c:when>
<c:when test="${mode=='LIST_APPOINTMENT'}">
<div class="container text-center">
<div class = "row">
<h1>Appointment List</h1>
<hr>
</div>
<table class = "table table-striped table-bordered">
<thead class = "table-dark">
    <tr>
      <th>Appointment Id</th>
      <th>Patient</th>
      <th>Doctor</th>
      <th>AppointmentDate</th>
      <th>Appointmentstatus</th>
      <th>Remarks</th>
      <th>Actions</th>
      
    </tr>
  </thead>
  <tbody>
    <c:forEach var = "appointment" items="${appointments}">
    <tr>
      <td>${appointment.appointmentid}</td>
      <td>${appointment.patient}</td>
      <td>${appointment.doctor}</td>
      <td>${appointment.appointmentdate}</td>
      <td>${appointment.appointmentstatus}</td>
      <td>${appointment.remarks}</td>
      <td>
      <a href="/deleteappointment?appointmentid=${appointment.appointmentid}" class="btn btn-danger">Delete</a> 
       <a href="/update?appointmentid=${appointment.appointmentid}" class="btn btn-primary">Update</a> 
      
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