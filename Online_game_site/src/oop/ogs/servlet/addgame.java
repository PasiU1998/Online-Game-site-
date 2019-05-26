package oop.ogs.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.sql.Statement;

//import util.DBConnection;

//import com.sun.corba.se.pept.transport.Connection;


@SuppressWarnings("serial")
@WebServlet("/addgame")
@MultipartConfig(maxFileSize = 16177215) 
public class addgame extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
    	
    	
        String gname = request.getParameter("gname");
        String gdescription = request.getParameter("gdescription");
        String category = request.getParameter("category");
        String PorF = request.getParameter("PorF");
        String price = request.getParameter("price");
        
        InputStream inputStream = null; 
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
	            inputStream1 = filePart.getInputStream();
	        }
	        
	        
	        
	        
	        
	        Connection conn = null;    	
    	try {         
        	String sql = ("insert into addgame(gname,description,category,payOrFree,price,image,setup) values(?,?,?,?,?,?,?)");
			Class.forName("com.mysql.cj.jdbc.Driver");
		    conn =  DriverManager.getConnection("jdbc:MySQL://localhost:3306/onlinegamesite","root", "pasindupasi1998");
		    PreparedStatement st = conn.prepareStatement(sql);
		    System.out.println("db connected!!");
		    
            st.setString(1, gname);
            st.setString(2, gdescription);
            st.setString(3,category);
            if ("a".equals(PorF)) {
            	st.setString(4,PorF );  
             }
            else {
            	st.setString(4,PorF );
            }
            
            st.setString(5,price);
            
		    if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                st.setBlob(6, inputStream);
            }
		    
		    
            if (inputStream1 != null) {
                // fetches input stream of the upload file for the blob column
                st.setBlob(7, inputStream1);
            }
            
		    int row = st.executeUpdate();
            if (row > 0) {
              System.out.println("File uploaded and saved into database");
            }
            
            
//            
//            if (inputStream1 != null) {
//                // fetches input stream of the upload file for the blob column
//                st.setBlob(7, inputStream1);
//            }
		    //int row1 = st.executeUpdate();
//            if (row1 > 0) {
//              System.out.println("File uploaded and saved into database");
//            }
//            
//            st.executeUpdate();
            response.sendRedirect("admin.jsp");


        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
		}
//    	try {
//    		  Class.forName("com.mysql.jdbc.Driver"); // Setup the connection with the DB
//    		  conn =  DriverManager.getConnection("jdbc:MySQL://localhost:3306/gamedb","root", "");  
//
//    		// Statements allow to issue SQL queries to the database ; that's why we need to create one.
//    		    Statement statement = conn.createStatement();
//
//    		// Result set get the result of the SQL query
//    		ResultSet resultSet = statement.executeQuery("select * from addgame;");
//
//    		    while (resultSet.next()) {  //retrieve data
//    		        String data = resultSet.getString("column_name");
//    		                   
//    		     }
//    	}
}    		
}
