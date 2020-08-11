package controllers;

import java.io.IOException;  



import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Part;
import dao.OrdersDAO;
import dao.PartDAO;

/**
 * Servlet implementation class CompleteOrderServlet
 */
@WebServlet("/CompleteOrderServlet")
public class CompleteOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompleteOrderServlet() {
        super();
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
		
		String user = request.getParameter("user");	
		String number = request.getParameter("number");
		String quantityString = request.getParameter("quantity");
		int quantity = Integer.parseInt(quantityString);
	
		
		OrdersDAO.instance.complete(user, number, quantity);
		request.getRequestDispatcher("admin.jsp").forward(request, response);
		
	}

}
