<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String id = request.getParameter("id");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "gamedb";
	String userid = "root";
	String password = "";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%
	try {
		connection = DriverManager.getConnection(connectionUrl + database, userid, password);
		statement = connection.createStatement();
		String sql = "select * from addgame where gameid=" + id;
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
%>
<!DOCTYPE html>
<html>
<head>

<style>
body {
	background: url("6004.jpg") no-repeat fixed center;
	opacity: 0.8;
	filter: alpha(opacity = 50);
	margin: 0px;
}

input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div {
	width: 75%;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	margin-left: 10%;
}

lable {
	font-size: 30px;
}
</style>

</head>
<body>

	<!-- update form -->
	<!-- update form -->
	<!-- update form -->
	<!-- update form -->
	<!-- update form -->

	<center>
		<h1 style="font-size: 40px; color: red;">Update</h1>
	</center>

	<div class="form_style">

		<form method="post" action="update-process.jsp">
			<input type="hidden" name="id"
				value="<%=resultSet.getString("gameid")%>">
			<%-- <input type="text" name="id" value="<%=resultSet.getString("gameid") %>"> --%>
			<br> <label for="id" style="font-weight: bold; font-size: 20px;">Game
				ID:</label> <br> <input type="text" name="dameid"
				value="<%=resultSet.getString(1)%>"> <br>
			<br> <label for="gname"
				style="font-weight: bold; font-size: 20px;">Game Name:</label><br>
			<input type="text" name="gname" value="<%=resultSet.getString(2)%>">
			<br>
			<br> <label for="Description:"
				style="font-weight: bold; font-size: 20px;">Description:</label><br>
			<input type="text" name="gdescription"
				value="<%=resultSet.getString(3)%>"> <br>
			<br> <label for="Category"
				style="font-weight: bold; font-size: 20px;">Category:</label><br>
			<input type="text" name="category"
				value="<%=resultSet.getString(4)%>"> <br>
			<br> <label for="porf"
				style="font-weight: bold; font-size: 20px;">Pay Or Free:</label><br>
			<label for="pay" style="padding-left: 40px;">Pay:</label><input
				type="radio" name="porf" value="pay">

			<label for="free" style="padding-left: 100px;">Free:</label><input
				type="radio" name="porf" value="free">
			<br>
			<br> <label for="price"
				style="font-weight: bold; font-size: 20px;">Price:</label><br>
			<input type="text" name="price" value="<%=resultSet.getString(6)%>">
			<br>
			<br><%--  <label for="image"
				style="font-weight: bold; font-size: 20px;">Image:</label> <input
				type="file" name="image" value="<%=resultSet.getBytes(7)%>">
			<br>
			<br> <label for="setup"
				style="font-weight: bold; font-size: 20px;">Setup:</label> <input
				type="file" name="setup" value="<%=resultSet.getBytes(8)%>"> --%>

			<br>
			<br> <input type="submit" value="update">
			
		</form>

	</div>
	<%
		}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>