<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Property Submission</title>
</head>
<body
	background="E:\Learn\PG\Sem 3\EBT\pro\HouseRent\WebContent\img1.jpg">

	<%
		String name1 = request.getParameter("name1");
		String Description = request.getParameter("Description");
		String option = request.getParameter("option");
		String loc = request.getParameter("loc1");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/House_Rent", "root",
					"info123.");
			PreparedStatement st = con.prepareStatement("insert into owner values(?,?,?,?)");

			st.setString(1, name1);
			st.setString(2, Description);
			st.setString(3, option);
			st.setString(4, loc);

			int i = st.executeUpdate();
			if (i > 0) {
				out.println("Property saved successfully!");
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
	%>
	<br>
	<br>
	<br>
	<tr>
		<td colspan="2">Go to home page <a href="index.jsp">Click
				Here!</a></td>
	</tr>
</body>
</html>