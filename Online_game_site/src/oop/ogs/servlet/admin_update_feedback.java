package oop.ogs.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oop.ogs.model.Coustomer;
import oop.ogs.model.feedback;
import oop.ogs.service.Interface_ItemService;
import oop.ogs.service.ItemService;

/**
 * Servlet implementation class adminupdate
 */
@WebServlet("/adminupdate")
public class admin_update_feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_update_feedback() {
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
		
		String buttonval =  request.getParameter("btnval");
		
		if(buttonval.equalsIgnoreCase("update")){
		
		feedback f1 =  new feedback();
		boolean  result ;
		
		try {
		f1.setName(request.getParameter("name"));;
		f1.setEmail(request.getParameter("email"));;
		f1.setFeedback(request.getParameter("feedback"));;


		
		
		
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Errro");
			
		}
		
		
		Interface_ItemService update = new ItemService();
		result  = update.update_feedback(f1 ,3);
		
		System.out.println(f1);
		if(result == true){
			response.sendRedirect("admin.jsp");
		}
		
		else {
			response.sendRedirect("User_profile.jsp");
		}
		
		}else if(buttonval.equalsIgnoreCase("remove")){
			
			boolean result;
			try {
			Interface_ItemService inter = new ItemService() ;
			result =inter.delete_userDetails(13);
			
			
			if(result == true) {
				response.sendRedirect("admin.jsp");
			}
			else {
				response.sendRedirect("adminupdate_user.jsp");
			}
			
			}catch(Exception e) {
				
				e.printStackTrace();
			}
			
			
		}
		
		
	}

}

