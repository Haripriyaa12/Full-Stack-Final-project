<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Availability Dates page</title>
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
        <a class="nav-link" href="/registeravailability">Add Availability Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/listavailability">ViewAvailabilityList</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Main">Mainpage</a>
      </li>
      
     
    </ul>
  </div>
  
</nav>
<br><br>
<c:choose>
<c:when test="${mode=='MODE_AVAILABILITYHOME' }">
<div class="container" id="homediv">
  <div class="jumbotron text-center">
  <h1>Welcome to Availability Home page<h1><br>
  </div>
  </div>
  </c:when>
  <c:when test="${mode=='MODE_AVAILABILITYREGISTER' }"> 
 
  <div class="container">
<div class="row">
<div class = "col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
<h1 class = "text-center">Register for New Availablity</h1>
<div class = "card-body">
<form method="POST" action="saveavailability">
<input type="hidden" name="id" value="${availabilitydates.availabilityid}"/>
<div class="form-group">
<label>Doctor Name</label>
<input type="text" name="doctor" value="${availabilitydates.doctor}" class="form-control" placeholder="Enter name">
</div>
<div class="form-group">
<label>From Date</label>
<input type="text" name="fromdate" value="${availabilitydates.fromdate}" class="form-control" placeholder="Enter fromdate">
</div>
<div class="form-group">
<label>End Date</label>
<input type="text" name="enddate" value="${availabilitydates.enddate}" class="form-control" placeholder="Enter enddate">
</div>
<div class = "box-footer">
<button type ="submit" class="btn btn-primary">Submit</button>
</div>
</form>
</div></div ></div></div>
</c:when>
<c:when test="${mode=='LIST_AVAILABILITY'}">
<div class="container text-center">
<div class = "row">
<h1>Availability List</h1>
<hr>
</div>
<table class = "table table-striped table-bordered">
<thead class = "table-dark">
    <tr>
      <th>Availability Id</th>
      <th>Doctor</th>
      <th>From Date</th>
      <th>End Date</th>
      <th>Actions</th>
      
    </tr>
  </thead>
  <tbody>
    <c:forEach var = "availabilitydates" items="${availabilities}">
    <tr>
      <td>${availabilitydates.availabilityid}</td>
      <td>${availabilitydates.doctor}</td>
      <td>${availabilitydates.fromdate}</td>
      <td>${availabilitydates.enddate}</td>
      <td>
      <a href="/deleteavailability?availabilityid=${availabilitydates.availabilityid}" class="btn btn-danger">Delete</a> 
       <a href="/edit?availabilityid=${availabilitydates.availabilityid}" class="btn btn-primary">Update</a> 
      
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