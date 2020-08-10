<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<% session=request.getSession(); %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="style.css">
	<link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
		<meta charset="ISO-8859-1">
		<title>Book Appointment</title>
		<style>
		table{
		margin-left:380px;
		}
		#form{
		margin-left:240px;
		}
		</style>
	</head>
	
	<body>
	<jsp:include page="header.jsp" /> 
		<h1>Patient Appointment Booking</h1>
		
				<table style=" width:50%; border: 1px solid black; border-collapse: collapse;"  >
				  <tr style="border: 1px solid black; border-collapse: collapse;">
				    <th>Description</th>
				    <th>Specialist</th> 
				    <th>Doctor</th>
				  </tr>
				  <tr>
				    <td>Musculoskeletal system problem</td>
				    <td>Orthopedics</td>
				    <td>Dr. Smith</td>
				  </tr>
				  <tr>
				    <td>Skin, hair, and nails problem</td>
				    <td>Dermatologist</td>
				    <td>Dr. Jackson</td>
				  </tr>
				  <tr>
				    <td>Pregnancy and childbirth</td>
				    <td>Gynecologist</td>
				    <td>Dr. Anna</td>
				  </tr>
				  <tr>
				    <td>Mental health</td>
				    <td>Psychiatrist</td>
				    <td>Dr. Eve</td>
				  </tr>
				</table><br><br>
		<form id="form" action="bookValidate.jsp" method="post">
			<table>
				<tr>
					<td>Name: </td>
					<td><% out.println(session.getAttribute("user")); %></td>
				</tr>
				
				<tr>
					<td>Choose Services:</td>
                    <td><select name="service" style="width: 100%">
							<option value="X-ray">X-ray</option>
							<option value="Blood Test">Blood Test</option>
							<option value="Check-up">Regular Check-Up</option>
							<OPTGROUP label="Consultation">
						       <OPTION value="Orthopedics">Orthopedics</OPTION>
						       <OPTION value="Dermatologist">Dermatologist</OPTION>
						       <OPTION value="Gynecologist">Gynecologist</OPTION>
						       <OPTION value="Psychiatrist">Psychiatrist</OPTION>
						     </OPTGROUP>
					</select></td>
                </tr>
                <tr>
                        <td>Choose Date:</td>
                        <td><input required type="date" name="date" min="2020-01-01"></td>
                    </tr>
				<tr>
					<td>Choose Time:</td>
					<td><select name="time" style="width: 100%">
							<option value="8.00am">8.00am</option>
							<option value="9.00am">9.00am</option>
							<option value="10.00am">10.00am</option>
							<option value="11.00am">11.00am</option>
							<option value="12.00pm">12.00pm</option>
							<option value="1.00pm">1.00pm</option>
							<option value="2.00pm">2.00pm</option>
							<option value="3.00pm">3.00pm</option>
							<option value="4.00pm">4.00pm</option>	
					</select></td>
				</tr>
				<tr></tr>
				<tr> 
					<td align="center" colspan="2"><input class=button1 type="submit" value="Submit">&nbsp;&nbsp;<input class=button2 type="reset" value="Clear"></td>
				</tr>
			</table>
		</form>
       <form align="center" action="pagePatient.jsp" > <input class="button2" type="submit" value="Back"> </form>
	</body>
</html>