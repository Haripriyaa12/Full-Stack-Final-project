<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Feedback page</title>
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
        <a class="nav-link" href="/feedbackregister">Add Feedback</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/feedbacklist">ListFeedbacks</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Main">Mainpage</a>
      </li>
      </ul>
  </div>
  
</nav>
<br><br>
<c:choose>
<c:when test="${mode=='MODE_FEEDBACKHOME' }">
<div class="container" id="homediv">
  <div class="jumbotron text-center">
  <h1>Welcome to Feedback Home page<h1><br>
  </div>
  </div>
  </c:when>
  <c:when test="${mode=='MODE_FEEDBACKREGISTER' }"> 
 
  <div class="container">
<div class="row">
<div class = "col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
<h1 class = "text-center">Give Feedback</h1>
<div class = "card-body">
<form method="POST" action="savefeedback">
<input type="hidden" name="id" value="${feedabck.feedbackid}"/>
<div class="form-group">
<label>Rating</label>
<input type="text" name="rating" value="${feedback.rating}" class="form-control" placeholder="Rate 1 to 5">
</div>
<div class="form-group">
<label>Patient</label>
<input type="text" name="patient" value="${feedback.patient }" class="form-control" placeholder="Enter patient">
</div>
<div class="form-group">
<label>Doctor</label>
<input type="text" name="doctor" value="${feedback.doctor }" class="form-control" placeholder="Enter doctor">
</div>
<div class="form-group">
<label>Feedback Comment</label>
<input type="text" name="feedbackcomment" value="${feedback.feedbackcomment }" class="form-control" placeholder="Enter feedbackcomment">
</div>
<div class = "box-footer">
<button type ="submit" class="btn btn-primary">Submit</button>
</div>
</form>
</div></div ></div></div>
</c:when>
<c:when test="${mode=='LIST_FEEDBACKS'}">
<div class="container text-center">
<div class = "row">
<h1>Feedback List</h1>
<hr>
</div>
<table class = "table table-striped table-bordered">
<thead class = "table-dark">
    <tr>
      <th>Feedback Id</th>
      <th>Feedback Rating</th>
      <th>Patient</th>
      <th>Doctor</th>
      <th>Feedback comment </th>
      <th>Actions</th>
      
    </tr>
  </thead>
  <tbody>
    <c:forEach var = "feedback" items="${feedbacks}">
    <tr>
      <td>${feedback.feedbackid}</td>
      <td>${feedback.rating}</td>
      <td>${feedback.patient}</td>
      <td>${feedback.doctor}</td>
      <td>${feedback.feedbackcomment}</td>
      
      <td>
      <a href="/deletefeedback?feedbackid=${feedback.feedbackid}" class="btn btn-danger">Delete</a> 
       <a href="/edit?feedbackid=${feedback.feedbackid}" class="btn btn-primary">Update</a> 
      
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