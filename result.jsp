<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body
	background="E:\Learn\PG\Sem 3\EBT\pro\HouseRent\WebContent\img1.jpg">
	<center>
		<%
			String ss = "Welcome";
			String s = (String) session.getAttribute("userid");
		%>
		<p class="w"><%="Welcome" + " " + s.toUpperCase()%></p>
		<table border="1" bordercolor="green">
			<th>Name</th>
			<th>Decription</th>
			<th>Loction</th>
			<%
				String loc = request.getParameter("T1");
				String poi = request.getParameter("T2");

				session.setAttribute("loc1", loc);
				session.setAttribute("poi1", poi);
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/House_Rent", "root",
							"info123.");
					PreparedStatement pst = con
							.prepareStatement("select * from owner where Type='" + poi + "' and location='" + loc + "'");
					ResultSet rs = pst.executeQuery();

					while (rs.next()) {
			%>

			<tr>
				<td><%=rs.getString(1)%></td>

				<td><%=rs.getString(2)%></td>

				<td><%=rs.getString(3)%></td>
			</tr>

			<%
				}
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</table>

		<br> <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="maps1.jsp">Click
			to view all properties listed in the Map!</a>
	</center>
</body>
</html>