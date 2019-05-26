<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("gameId");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "onlinegamesite";
String userid = "root";
String password = "pasindupasi1998";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>

	<link rel="stylesheet" type="text/css" href="css/css1.css">
	<style>
		body { 
  			background:  url("5.png") no-repeat fixed center;
  			opacity: 0.9;
  			filter: alpha(opacity=50); 
  			margin: 0px;
			}
			
			
			
			.welcome{
			background-color: gray;
			height: 100px;
			margin-top: 10px;
  			overflow: hidden;
  			padding: 10px 10px;
  			width: 95%;
  			border-radius: 25px;
			}
			
			.welcome1{
		  	height: 10px;
		  	margin-top: -8px;
		  	margin-left: -8px;
		  	margin-right: -20px;
			}
			
			/* The sidebar menu */
			.sidenav {
			  height: 100%; /* Full-height: remove this if you want "auto" height */
			  width: 160px; /* Set the width of the sidebar */
			  position: fixed; /* Fixed Sidebar (stay in place on scroll) */
			  z-index: 1; /* Stay on top */
			  top: 135px; /* Stay at the top */
			  left: 0;
			  background-color: #111; /* Black */
			  overflow-x: hidden; /* Disable horizontal scroll */
			  padding-top: 20px;
			}
			
			table{
 				 width: 98%;
 				 margin-top: 5%;  
			}
			
			/* Style the navbar */
			#navbar {
			  overflow: hidden;
			  background-color: gray;
			}
						
			/* Page content */
			.content {
			  padding: 25px;
			}
			
			/* The sticky class is added to the navbar with JS when it reaches its scroll position */
			.sticky {
			  position: fixed;
			  top: 0;
			  width: 100%;
			}
			
			/* Add some top padding to the page content to prevent sudden quick movement (as the navigation bar gets a new position at the top of the page (position:fixed and top:0) */
			.sticky + .content {
			  padding-top: 60px;
			}
			
			.delett{
				height: 200px; 
			}
			
		.input_style{
				  width: 95%;
				  height: 50%;
				 
				  border: none;
				  outline: none !important;
				  top: 2px;
			}
	</style>
	
</head>

<body>
	<center><div class="welcome1"></div>
	<div class="welcome" id="navbar">
		<center><img src="image/avatar.png" alt="Avatar" class="avatar"></center>
		<center><h3>WELCOME TO ADMIN PAGE</h3></center>
	</div></center>

<!-- Side navigation -->
<div class="sidenav">
  <a href="admin.jsp" >Add</a><br><hr>
  <a href="delet1.jsp" >Delete</a><br><hr>
  <a href="update1.jsp">Update</a><br><hr>
  <a href="adminupdate_user.jsp">Admin Update And View User</a><hr>
  <a href="adminUpdate_feedback.jsp">Admin Update And View Feedback</a>
</div>

<!-- Page content -->
<div class="main">



<div  class="delett" id="delet">
<table border="1">
<caption style="font-size: 30px;">Delete</caption>
<tr>
<th>Game ID</th>
<th>Game Name</th>
<th>Description</th>
<th>category</th>
<th>Pay or Free</th>
<th>Price</th>
<th>Image</th>
<th>Add Setup</th>
<th>Delet</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from addgame";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getString(5) %></td>
<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getBytes(7) %></td>
<td><%=resultSet.getBytes(8) %></td>
<td><a href="delete.jsp?id=<%=resultSet.getString("gameid") %>">
<button type="button" class="delete" style="font-size: 30px; background-color: red; border-radius: 8px; border: none;">Delete</button></a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>


 


</div>




<script>
//When the user scrolls the page, execute myFunction 
window.onscroll = function() {myFunction()};

// Get the navbar
var navbar = document.getElementById("navbar");

// Get the offset position of the navbar
var sticky = navbar.offsetTop;

// Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script src="admin.js"> </script> -->
</body>
</html>