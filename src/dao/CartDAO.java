package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Cart;


public enum CartDAO {

instance;
	
	
	
	public void add(String number, int quantity){
		Connection connection = Utils.getConnection();
		
		try{
			PreparedStatement psmt = connection
					.prepareStatement("INSERT INTO cart SELECT name, number, description, price, stock, image from part where number = '" + number + "';");
			
			PreparedStatement psmt2 = connection
					.prepareStatement("UPDATE part SET stock= stock - " + quantity + " WHERE number = '"+ number + "'");
			
			PreparedStatement psmt3 = connection
					.prepareStatement("UPDATE cart SET quantity = " + quantity + " WHERE number = '"+ number + "'");
					
			PreparedStatement psmt4 = connection
					.prepareStatement("UPDATE cart SET price= price * quantity WHERE number = '"+ number + "'");		
			
			
			
			
			
			psmt.executeUpdate();
			psmt2.executeUpdate();
			psmt3.executeUpdate();
			psmt4.executeUpdate();
			
			psmt.close();
			connection.close();
		} catch (SQLException e){
			e.printStackTrace();}
		}
	
	
	 public List<Cart> list() {
		 Connection connection = Utils.getConnection();

	      List<Cart> cartList = new ArrayList<Cart>();
     try {
        PreparedStatement psmt = connection
              .prepareStatement("SELECT * FROM CART");
        
        ResultSet rs = psmt.executeQuery();

        while (rs.next()) {
           Cart c = new Cart(rs.getString("name"), rs.getString("number"), 
        		   rs.getString("description"), rs.getDouble("price"), rs.getInt("quantity"), rs.getString("image"));
           cartList.add(c);
           System.out.print(c);
        }
     } catch (SQLException e) {
        e.printStackTrace();
     }
     return cartList;
  
}
	 
	 
	 
	 
	public void deleteAll(){
		Connection connection = Utils.getConnection();
		
		try{
			PreparedStatement psmt = connection
					.prepareStatement("DELETE FROM cart WHERE quantity > 0;");
			
			
			psmt.executeUpdate();
			
			psmt.close();
			connection.close();
		} catch (SQLException e){
			e.printStackTrace();}
		}
		
	
	
}
