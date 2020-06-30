<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<title>Search</title>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <!--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> -->
        <style type="text/css">
        #errormsg{
        color:red;
        }
        #desterror{
        color:red;
        position: relative;
   		 left: 700px;
    	top: -41px;
        },
     </style>
     <c:url value="/css/register.css" var="jstlCss" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap.min.js"></script>
</head>
<body>
	<center>
	<h3>Flight Search</h3>
<form:form  modelAttribute="flight" action="/searchflight" >
<label for="SourceCity">SourceCity:</label><input type="text" id="sourceCity" name="sourceCity">
<small><form:errors path="sourceCity"  id="errormsg" /></small>
    <label for="DestinationCity">DestinationCity:</label><input type="text" id="destinationCity" name="destinationCity">  <br/><br/>
	<small><form:errors path="destinationCity" id="desterror" /></small>
  <label for="travelDate">TravelDate:</label><input type="date" id="travelDate" name="travelDate"><form:errors path="travelDate"  id="errormsg" />  <label for="returnDate">ReturnDate:</label><input type="date" id="returnDate" name="returnDate">
  <br/><br/>
  
  <input type="submit" value="submit"/>
		&nbsp;&nbsp;&nbsp;
		<input type="reset" value="clear" />
</form:form>
</center>
</body>
<!-- class="table table-bordered" -->
<table  id="example" class="table table-striped table-bordered">

  <c:if test="${not empty listOfFlights }">
  <thead>
    <tr>
      <th scope="col">SourceCity</th>
      <th scope="col">DestinationCity</th>
      <th scope="col">flightNumber</th>
      <th scope="col">airelineNumber</th>
      <th scope="col">departureTime</th>
      <th scope="col">ArivalTime</th>
      <th scope="col">noOfStops</th>
      <th scope="col">ticketPrice</th>
    </tr>
    </c:if>
  </thead>
  <tbody>
  <c:if test="${not empty listOfFlights }">
   <c:forEach var="flight" items="${allFlights}"> 
    <tr>
      <td>${flight.sourceCity}</td>
      <td>${flight.destinationCity}</td>
      <td>${flight.flightNumber}</td>
      <td>${flight.airelineNumber}</td>
      <td>${flight.departureTime}</td>
      <td>${flight.arivalTime}</td>
      <td>${flight.noOfStops}</td>
      <td>${flight.ticketPrice}</td>
      
    </tr>
    </c:forEach>
      </c:if>
  </tbody>
  
</table>
</body>

<script type="text/javascript">

$(document).ready(function() {
    $('#example').DataTable();
} );
</script>

</html>