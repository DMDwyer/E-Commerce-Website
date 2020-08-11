package controllers;

import java.io.IOException;  


import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Part;
import model.User;
import dao.PartDAO;
import dao.UserDAO;
/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = "user";

		int invEmail = UserDAO.userExists(email);
		
		User user = new User (name, email, password, role);
		
		System.out.print(invEmail);
		
		if(invEmail == 1)
	    {
			request.getRequestDispatcher("registerFailed.jsp").forward(request, response);
	    	
	    }
	    else if(invEmail == 0)
	    {	
	    	UserDAO.instance.save(user);
	    	request.getRequestDispatcher("index.jsp").forward(request, response);	
	    }
		
		   
	}

}
