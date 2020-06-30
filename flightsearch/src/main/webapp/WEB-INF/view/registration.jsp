<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<title>Registraion</title>
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
<form:form method="post" modelAttribute="flightreg" action="/flightregistraion" >

<label for="SourceCity">SourceCity:</label><input type="text" id="sourceCity" name="sourceCity"><br/>
    <label for="DestinationCity">DestinationCity:</label><input type="text" id="destinationCity" name="destinationCity">  <br/>
  <label for="travelDate">TravelDate:</label><input type="date" id="travelDate" name="travelDate"><br/>
    <label for="returnDate">ReturnDate:</label><input type="date" id="returnDate" name="returnDate"><br/>
    <label for="flightNumber">flightNumber:</label><input type="text" id="flightNumber" name="flightNumber"><br/>
    <label for="airelineNumber">airelineNumber:</label><input type="text" id="airelineNumber" name="airelineNumber"><br/>
    <label for="departureTime">departureTime:</label><input type="text" id="departureTime" name="departureTime"><br/>
    <label for="arivalTime">arivalTime:</label><input type="text" id="arivalTime" name="arivalTime"><br/>
    <label for="noOfStops">noOfStops:</label><input type="text" id="noOfStops" name="noOfStops"><br/>
    <label for="ticketPrice">ticketPrice:</label><input type="text" id="ticketPrice" name="ticketPrice"><br/>
  <br/><br/>
  
		${regsucces }
  <input type="submit" value="submit"/>
		&nbsp;&nbsp;&nbsp;
		<input type="reset" value="clear" />
</form:form>
</center>
</body>
</html>