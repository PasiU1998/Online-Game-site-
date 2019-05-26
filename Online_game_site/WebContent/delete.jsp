<body>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
int id1 = Integer.parseInt(request.getParameter("id"));
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinegamesite", "root", "pasindupasi1998");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM addgame WHERE gameid="+id1);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

<% response.sendRedirect("delet1.jsp");%>


</body>
</html>