package oop.ogs.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oop.ogs.model.feedback;
import oop.ogs.util.DBConnectionUtil;
import oop.ogs.service.Interface_ItemService;
import oop.ogs.service.ItemService;
/**
 * Servlet implementation class add_feedback
 */
@WebServlet("/add_feedback")
public class add_feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add_feedback() {
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
		
		feedback f1 =  new feedback();
		
		
		f1.setName(request.getParameter("name"));
		f1.setEmail(request.getParameter("email"));
		f1.setFeedback(request.getParameter("feedback"));
		try {
		Interface_ItemService i1 =  new ItemService();
		boolean result = i1.set_feedback(f1);
		
		
			if(result == true) {
				response.sendRedirect("Index.jsp");
			}
			else {
				response.sendRedirect("feedback.jsp");
			}
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
			
		
		
		
	}

}
