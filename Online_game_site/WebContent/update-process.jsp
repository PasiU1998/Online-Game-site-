<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@page import="java.io.IOException"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.Part"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.io.InputStream"%>
<%@page import="javax.servlet.http.Part"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
</head>
<body>


	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
	<%@ page import="java.sql.*"%>

	<%
		String gname = request.getParameter("gname");
		String gdescription = request.getParameter("gdescription");
		String category = request.getParameter("category");
		String PorF = request.getParameter("porf");
		String price = request.getParameter("price");

		/* InputStream inputStream = null;
		InputStream inputStream1 = null;

		Part filePart = request.getPart("image");
		if (filePart != null) {
			// prints out some information for debugging
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());

			//obtains input stream of the upload file
			inputStream = filePart.getInputStream();
		}

		Part filePart1 = request.getPart("Setup");
		if (filePart1 != null) {
			// prints out some information for debugging
			System.out.println(filePart1.getName());
			System.out.println(filePart1.getSize());
			System.out.println(filePart1.getContentType());

			//obtains input stream of the upload file
			inputStream1 = filePart.getInputStream(); */
		
		Connection conn = null;
		PreparedStatement st = null;
		int id1 = Integer.parseInt(request.getParameter("id"));
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:MySQL://localhost:3306/gamedb", "root", "");
			String sql = "Update addgame set gname=?,description=?,category=?,payOrFree=?,price=? where gameid=?";
			st = conn.prepareStatement(sql);
			System.out.println("db connected!!");

			st = conn.prepareStatement(sql);
			st.setString(1, gname);
			st.setString(2, gdescription);
			st.setString(3, category);
st.setString(4, PorF);

			st.setString(5, price);
	st.setInt(6, id1);
			/* if (inputStream != null) {
				// fetches input stream of the upload file for the blob column
				st.setBlob(7, inputStream);
			}

			if (inputStream1 != null) {
				// fetches input stream of the upload file for the blob column
				st.setBlob(8, inputStream1);
			} */
			int i = st.executeUpdate();
			if (i > 0) {
				out.print("Record Updated Successfully");
				response.sendRedirect("update1.jsp");
			} else {
				out.print("There is a problem in updating Record.");
			}
		} catch (SQLException sql) {
			request.setAttribute("error", sql);
			out.println(sql);
		}
	%>
<%-- 	<%
		response.sendRedirect("update1.jsp");
	%> --%>
</body>
</html>