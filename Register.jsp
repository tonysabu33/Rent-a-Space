<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body
	background="E:\Learn\PG\Sem 3\EBT\pro\HouseRent\WebContent\img1.jpg">
	<script type="text/javascript">
		function submit21() {

			if (document.form1.uname.value == null
					|| document.form1.uname.value == "") {
				alert("User name is blank");
				document.form1.uname.focus();
				return false;
			}
			//      var name=document.form1.fname.value ;
			if (document.form1.fname.value == null
					|| document.form1.fname.value == "") {
				alert("First name is blank");
				document.form1.fname.focus();
				return false;
			}
			if (document.form1.lname.value == null
					|| document.form1.lname.value == "") {
				alert("Last name is blank")
				document.form1.lname.focus();
				return false;
			}

		}
	</script>
	<form method="post" action="insert.jsp" onsubmit="return submit21()"
		name="form1">
		<table align="right" bordercolor="white" width="300" height="480"
			cellpadding="5">
			<thead>
				<tr>
					<th colspan="122"><b>Enter Information Here</b></th>
				</tr>
			</thead>
			<tr>
				<td>User Name:</td>
				<td><input type="text" name="uname"></td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="fname"></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="lname"></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td>Confirm Password:</td>
				<td><input type="password" name="cpass"></td>
			</tr>

			<tr>
				<td>Address:</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>Country</td>
				<td><input type="text" name="country"></td>
			</tr>
			<tr>
				<td>State:</td>
				<td><input type="text" name="state"></td>
			</tr>
			<tr>
				<td>City</td>
				<td><input type="text" name="city"></td>
			</tr>

			<tr>
				<td>Mobile:</td>
				<td><input type="text" name="mobile"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Submit"></td>
			</tr>
			<tr>
				<td colspan="2">Already a member? <a href="b.html">Login
						Here</a></td>
			</tr>
		</table>
	</form>


</body>
</html>