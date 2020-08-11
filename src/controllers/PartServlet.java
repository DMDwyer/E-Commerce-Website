package controllers;

import java.io.IOException; 




import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Part;
import model.Selenium;
import model.User;
import dao.PartDAO;
import dao.UserDAO;


/**
 * Servlet implementation class PartsServlet
 */
@WebServlet("/PartServlet")
public class PartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PartServlet() {
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
		
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String description = request.getParameter("description");
		String priceString = request.getParameter("price");
		Double price = Double.parseDouble(priceString);
		String stockString = request.getParameter("stock");
		int stock = Integer.parseInt(stockString);
		String image = null;
		
		
		String check = request.getParameter("option");
		
		if(check == null)
		{
		image = request.getParameter("image");
		
		}
		else
		{
		image =	Selenium.image(number);
		}
		
		Part part = new Part (name, number, description, price, stock, image);
		
		int invNumber = PartDAO.partExists(number);
		
		
		if(invNumber == 1)
	    {
	    	request.getRequestDispatcher("partExists.jsp").forward(request, response);
	    }
	    else if (invNumber == 0)
	    {
	    	PartDAO.instance.save(part);
	    	request.getRequestDispatcher("index.jsp").forward(request, response);
	    }
		
	}

}