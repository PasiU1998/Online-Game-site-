package oop.ogs.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import oop.ogs.service.Interface_ItemService;
import oop.ogs.service.ItemService;
import oop.ogs.util.DBConnectionUtil;
import oop.ogs.model.Coustomer;
/**
 * Servlet implementation class Login_Servelet
 */
@WebServlet("/Login_Servelet")
public class Login_Servelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Connection connection;
	private PreparedStatement ps;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_Servelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		Coustomer c4 = new Coustomer();
		
		
		String userName = request.getParameter("username") ;
		String passsword = request.getParameter("password") ;
		try {
		 connection = DBConnectionUtil.getDBConnection();
		String sql = "SELECT coustemer_username , coustemer_password FROM coustemer WHERE coustemer_username=? AND coustemer_password=? " ;
		 ps = connection.prepareStatement(sql);
		
		 ps.setString(1,userName);
		 ps.setString(2, passsword);
		 
		 ResultSet result = ps.executeQuery();
		 
	System.out.println(ps);
		 
		if(result.next()) {
			//JOptionPane.showMessageDialog(null, "Username and Password exist");
			
		
			HttpSession session =  request.getSession();
			session.setAttribute("Username", userName);
			response.sendRedirect("Index.jsp");
			
			System.out.println(session.getAttribute("Username").toString());
			
			
		}else {
			
			//JOptionPane.showMessageDialog(null, "Check your User name ad Password");
			response.sendRedirect("login.jsp");
			System.out.println("Errro login");
		}
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
