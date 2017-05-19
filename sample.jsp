<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%response.setIntHeader("Refresh", 5);

// Set response content type
response.setContentType("text/html");

Calendar calendar = new GregorianCalendar();
String am_pm;
int hour = calendar.get(Calendar.HOUR);
int minute = calendar.get(Calendar.MINUTE);
int second = calendar.get(Calendar.SECOND);
if(calendar.get(Calendar.AM_PM) == 0)
  am_pm = "AM";
else
  am_pm = "PM";

String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
String title = "Auto Page Refresh using JSP";
String docType =
"<!doctype html public \"-//w3c//dtd html 4.0 " +
"transitional//en\">\n";
out.println(docType +
  "<html>\n" +
  "<head><title>" + title + "</title></head>\n"+
  "<body bgcolor=\"#f0f0f0\">\n" +
  "<h1 align=\"center\">" + title + "</h1>\n" +
  "<p>Current Time is: " + CT + "</p>\n"); %>
</body>
</html>