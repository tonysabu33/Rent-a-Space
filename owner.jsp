<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Owner Details</title>
<script>
	function digclock() {
		var d = new Date()
		var t = d.toLocaleTimeString()

		document.getElementById("clock").innerHTML = t
	}

	setInterval(function() {
		digclock()
	}, 1000)
</script>
<div id="clock"></div>
</head>
<body
	background="E:\Learn\PG\Sem 3\EBT\pro\HouseRent\WebContent\img1.jpg">
	<form action="ownersave.jsp" method="post">
		<table bordercolor="green" align="center" border="2" style="width: 5%"
			cellpadding="5" cellspacing="4">
			<thead>
				<tr>
					<th colspan="12">Enter Space Details</th>
				</tr>
			</thead>
			<tr>
				<td><label> Name:</label></td>
				<td><input name="name1" type="text"><br>
				<br></td>
			</tr>
			<tr>
				<td><label>Description:</label></td>
				<td><textarea name="Description"></textarea></td>
			</tr>

			<tr>
				<td><label>Location:</label></td>
				<td><select name="loc1">
						<option value=""></option>
						<option value="Avadi">Avadi</option>
						<option value="Ambattur">Ambattur</option>
						<option value="Adyar">Adyar</option>
						<option value="Chepauk">Chepauk</option>
						<option value="Egmore">Egmore</option>
						<option value="Guindy">Guindy</option>
						<option value="Mylapore">Mylapore</option>
						<option value="Ramapuram">Ramapuram</option>
						<option value="Pattabiram">Pattabiram</option>
						<option value="Perambur">Perambur</option>
						<option value="Porur">Porur</option>

				</select></td>
			</tr>

			<tr>
				<td><label>Type:</label></td>
				<td><select name="option">
						<option value="Lodge">Hostel</option>
						<option value="Hotel">Hotel</option>
						<option value="House">House</option>
				</select></td>
			</tr>

			<tr bordercolor="green">
				<td colspan="2" align="center"><input type="submit"
					value="Save"></td>
			</tr>
		</table>
	</form>
</body>
</html>