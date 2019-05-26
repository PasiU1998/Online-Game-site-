package oop.ogs.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oop.ogs.model.Coustomer;
import oop.ogs.service.Interface_ItemService;
import oop.ogs.service.ItemService;

/**
 * Servlet implementation class update_profile
 */
@WebServlet("/update_profile")
public class update_profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update_profile() {
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
		
		Coustomer c5 =  new Coustomer();
		boolean  result ;
		
		try {
		c5.setFirst_name(request.getParameter("firstName"));
		c5.setLast_name(request.getParameter("lastName"));
		c5.setUser_name(request.getParameter("userName"));
		c5.setEmail(request.getParameter("email"));
		//c5.setCountry_code(Integer.parseInt(request.getParameter("CCode")));
		c5.setPhone_number(Integer.parseInt(request.getParameter("phone")));
		//c5.setPostal_code(Integer.parseInt(request.getParameter("postalCode")));
		c5.setAdress(request.getParameter("Address"));
		c5.setPassword(request.getParameter("password"));
		c5.setConfirm_password(request.getParameter("verifypassword"));
		
		
		
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Errro");
			
		}
		
		
		Interface_ItemService update = new ItemService();
		result  = update.update_cutomerDetails(c5 , 13);
		
		System.out.println(c5);
		if(result == true){
			response.sendRedirect("User_profile.jsp");
		}
		
		else {
			response.sendRedirect("User_profile.jsp");
		}
		
	}

}
