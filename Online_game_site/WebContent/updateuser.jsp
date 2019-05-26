<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oop.ogs.model.Coustomer"%>
<%@page import="oop.ogs.service.Interface_ItemService"%>
<%@page import="oop.ogs.service.ItemService"%>
	
	<%Coustomer cus =  new Coustomer();
		Interface_ItemService service = new ItemService();
		cus = service.getcustomerDetails(11);
		%>
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
	
		::placeholder{
			color:black;
		}
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
  <a href="updateuser.jsp">Update And View User</a>
</div>

<!-- Page content -->
<div class="main">



<form action="adminupdate" method="POST">

      <table class="table table-bordered table-responsive-md table-striped text-center" border="1">
      <caption>Editable table</caption>
        <tr>
          <th class="text-center">First name</th>
          <th class="text-center">Last name</th>
          <th class="text-center">User name</th>
          <th class="text-center">Email</th>
            <th class="text-center">Phone Number</th>
			<th></th>
			<th></th>
        </tr>
        
        <tr>
          <td class="pt-3-half "style="position:fixed; contenteditable="true" style="width:fixed;"><%=cus.getFirst_name() %> </td>
          <td class="pt-3-half" contenteditable="true"><%=cus.getLast_name() %></td>
          <td class="pt-3-half" contenteditable="true"><%=cus.getUser_name() %></td>
          <td class="pt-3-half" contenteditable="true"><%=cus.getEmail() %></td>
          <td class="pt-3-half" contenteditable="true"><%=cus.getPhone_number() %></td>

          <td>
          
            <span class="table-remove"><button type="submit" class="btn btn-danger btn-rounded btn-sm my-0" name = "btnval" value="remove">Remove</button></span>
          
          </td>
         
          
             <td>
               <span class="table-remove"><button type="submit" class="btn btn-danger btn-rounded btn-sm my-0" name ="btnval" value="update">Update</button></span>
          </td>
         
        </tr>
       
      </table>

</form>
<!-- Editable table -->


 


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
</body>
</html>