package dao;

import java.sql.Connection;   
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import model.Cart;
import model.Orders;
import model.Part;
import model.User;

public enum OrdersDAO {
	
	instance;
	
	public void addOrders(User user) {
		 Connection connection = Utils.getConnection();

	     
    try {
       PreparedStatement psmt = connection
             .prepareStatement("SELECT * FROM CART");
       
       ResultSet rs = psmt.executeQuery();

       while (rs.next()) {
       	PreparedStatement psmt2 = connection
					.prepareStatement("INSERT INTO ORDERS (user, name, number, description, price, quantity, status, date) VALUES (?, ?, ?, ?, ?, ?, 'pending', NOW)");
       	
       		psmt2.setString(1, user.getEmail());
       		psmt2.setString(2, rs.getString("name"));
			psmt2.setString(3, rs.getString("number"));
			psmt2.setString(4, rs.getString("description"));
			psmt2.setDouble(5, rs.getDouble("price"));
			psmt2.setInt(6, rs.getInt("quantity"));
			
			psmt2.executeUpdate();
			
			psmt2.close();
       	
       }
    } catch (SQLException e) {
       e.printStackTrace();
    }
  
 
}
	
	public List<Orders> list() {
		 Connection connection = Utils.getConnection();

	      List<Orders> ordersList = new ArrayList<Orders>();
    try {
       PreparedStatement psmt = connection
             .prepareStatement("SELECT * FROM ORDERS");
       
       ResultSet rs = psmt.executeQuery();

       while (rs.next()) {
          Orders o = new Orders(rs.getString("user"), rs.getString("name"), rs.getString("number"), 
       		   rs.getString("description"), rs.getDouble("price"), rs.getInt("quantity"), rs.getString("status"), rs.getDate("date"));
          ordersList.add(o);
          System.out.print(o);
       }
    } catch (SQLException e) {
       e.printStackTrace();
    }
    return ordersList;
 
}
	 
	
	
	public void complete(String user, String number, int quantity) {
	      

	      Connection connection = Utils.getConnection();
	    
	      try {
	    	  
	    	 
	         String sql = "UPDATE ORDERS SET STATUS='completed' WHERE USER = ? AND NUMBER = ? AND QUANTITY = ?";
	         PreparedStatement psmt = connection.prepareStatement(sql);
	         psmt.setString(1, user);
	         psmt.setString(2, number);
	         psmt.setInt(3, quantity);

	         psmt.executeUpdate();
	       
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } 
	   }

}
