package oop.ogs.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oop.ogs.service.Interface_ItemService;
import oop.ogs.service.ItemService;
import oop.ogs.model.Coustomer;

/**
 * Servlet implementation class AddCoustomer
 */
@WebServlet("/AddCoustomer")
public class AddCoustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
    public AddCoustomer() {
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
		
		
		response.setContentType("text/html");
		
		try {
		
		Coustomer c1 = new Coustomer();

		
		c1.setFirst_name(request.getParameter("firstname"));
		c1.setLast_name(request.getParameter("lastname"));
		c1.setUser_name(request.getParameter("username"));
		c1.setEmail(request.getParameter("email"));
		c1.setCountry_code(Integer.parseInt(request.getParameter("cCode")));
		c1.setPhone_number(Integer.parseInt(request.getParameter("phone")));
		c1.setPostal_code(Integer.parseInt(request.getParameter("postalC")));
		c1.setAdress(request.getParameter("Address"));
		c1.setPassword(request.getParameter("password"));
		c1.setConfirm_password(request.getParameter("confpass"));
		
		

		Interface_ItemService customerService = new ItemService();
		customerService.set_coustemer(c1);
		
		response.sendRedirect("login.jsp");
//		request.setAttribute("employee", c1);
//		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("ActionGame.jsp");
//		dispatcher.forward(request, response);
//		doGet(request, response);
		
		
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("Erro print");
		}
	
		
	}
		
}
