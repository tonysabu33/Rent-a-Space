<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Room-Seeker-Page</title>
</head>
<body background="E:\Learn\PG\Sem 3\EBT\pro\HouseRent\WebContent\img1.jpg">
<%
String ss="Welcome";
String s=(String)session.getAttribute("userid");%>
<p class="w"><%="Welcome"+" "+s.toUpperCase()%></p>
<form  action="result.jsp" method="post"><br><br><br><br><br><br>
<label>Enter the Location:</label>
<select name="T1">

<%
String poi,loc;
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/House_Rent", "root","info123." );
	PreparedStatement pst=con.prepareStatement("select location from owner ");
	ResultSet rs=pst.executeQuery();
	
	while(rs.next())
	{
		//poi=rs.getString(1);
		loc=rs.getString(1);
	
	
%>
<option>
<%=loc %>
<%

	}

}catch(Exception e)
{
	
}

%>

</option>
</select>
<!-- <input type="text" value="" name="T1"> -->
<label>Enter the Point of Interest:</label>
<select name="T2">

<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/House_Rent", "root","info123." );
	PreparedStatement pst=con.prepareStatement("select distinct(Type) from owner ");
	ResultSet rs=pst.executeQuery();
	
	while(rs.next())
	{
		poi=rs.getString(1);
		//loc=rs.getString(2);
		%>
		<option>
		<%=poi %>
	<%}

	}catch(Exception e1){}

	
%>






</option>

</select>


<!-- <input type="text" value="" name="T2"> -->
<input border="" type="submit" value="submit">
</form>
<style>  
p.w {  
    border-style: groove;  
    border-color: blue;  
    
    
}  
  
</style> 
</body>
</html>