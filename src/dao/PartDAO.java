package dao;


import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import java.util.ArrayList;
import java.util.List;

import model.Part;



public enum PartDAO {
	
instance;
	
	
	
	public void save(Part part){
		Connection connection = Utils.getConnection();
		
		try{
			PreparedStatement psmt = connection
					.prepareStatement("INSERT INTO PART (name, number, description, price, stock, image) VALUES (?, ?, ?, ?, ?, ?)");
			psmt.setString(1, part.getName());
			psmt.setString(2, part.getNumber());
			psmt.setString(3, part.getDescription());
			psmt.setDouble(4, part.getPrice());
			psmt.setInt(5, part.getStock());
			psmt.setString(6, part.getImage());
			
			
			
			psmt.executeUpdate();
			
			psmt.close();
			connection.close();
		} catch (SQLException e){
			e.printStackTrace();}
		}
		
	
	
	
	
	 public List<Part> list() {
		 Connection connection = Utils.getConnection();

	      List<Part> partList = new ArrayList<Part>();
     try {
        PreparedStatement psmt = connection
              .prepareStatement("SELECT * FROM PART");
        
        ResultSet rs = psmt.executeQuery();

        while (rs.next()) {
           Part p = new Part(rs.getString("name"), rs.getString("number"), 
        		   rs.getString("description"), rs.getDouble("price"), rs.getInt("stock"), rs.getString("image"));
           partList.add(p);
           System.out.print(p);
        }
     } catch (SQLException e) {
        e.printStackTrace();
     }
     return partList;
  
}
	 
	 
	 
	 public Part search(String number) {
	      Part part = null;

	      Connection connection = Utils.getConnection();
	    
	      try {
	    	  
	         String sql = "SELECT * FROM PART WHERE NUMBER like ?";
	         PreparedStatement psmt = connection.prepareStatement(sql);
	         psmt.setString(1, "%" + number + "%");

	         ResultSet rs = psmt.executeQuery();
	         rs.next();

	         String name = rs.getString("NAME");
	         String description = rs.getString("description");
	         Double price = rs.getDouble("price");
	         Integer stock = rs.getInt("stock");
	         String image = rs.getString("image");
	         
	         part = new Part(name, number, description, price, stock, image);
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return part;
	   }

	 
	 public Part show(String number) {
	      Part part = null;

	      Connection connection = Utils.getConnection();
	    
	      try {
	    	  
	         String sql = "SELECT * FROM PART WHERE NUMBER = ?";
	         PreparedStatement psmt = connection.prepareStatement(sql);
	         psmt.setString(1, number);

	         ResultSet rs = psmt.executeQuery();
	         rs.next();

	         String name = rs.getString("NAME");
	         String description = rs.getString("description");
	         Double price = rs.getDouble("price");
	         Integer stock = rs.getInt("stock");
	         String image = rs.getString("image");
	         
	         part = new Part(name, number, description, price, stock, image);
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return part;
	   }
	 
	 
	 public void updateStock(String number, int stock) {
	      

	      Connection connection = Utils.getConnection();
	    
	      try {
	    	  
	    	 
	         String sql = "UPDATE PART SET STOCK=? WHERE NUMBER = ?";
	         PreparedStatement psmt = connection.prepareStatement(sql);
	         psmt.setInt(1, stock);
	         psmt.setString(2, number);

	         psmt.executeUpdate();
	       
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } 
	   }




	public void updatePrice(String number, double price) {
    

    Connection connection = Utils.getConnection();
  
    try {
  	  
  	 
       String sql = "UPDATE PART SET PRICE=? WHERE NUMBER = ?";
       PreparedStatement psmt = connection.prepareStatement(sql);
       psmt.setDouble(1, price);
       psmt.setString(2, number);

       psmt.executeUpdate();
     
       
    } catch (SQLException e) {
       e.printStackTrace();
    } 
 }




public void delete(String number) {
    

    Connection connection = Utils.getConnection();
  
    try {
  	  
  	 
       String sql = "DELETE FROM PART WHERE NUMBER = ?";
       PreparedStatement psmt = connection.prepareStatement(sql);
       psmt.setString(1, number);
       System.out.println(number);

       psmt.executeUpdate();
     
       
    } catch (SQLException e) {
       e.printStackTrace();
    } 
 }


public static int partExists(String number) {
	 Connection connection = Utils.getConnection();

     int checkNumber = 0;
try {
   PreparedStatement psmt = connection
         .prepareStatement("SELECT NUMBER FROM PART WHERE NUMBER = ?");
   psmt.setString(1, number);
   
   System.out.print(number);
   
   ResultSet rs = psmt.executeQuery();

   if (rs.next()) {
   	 checkNumber = 1;
   }
} catch (SQLException e) {
   e.printStackTrace();
}
return checkNumber;

}



}

	 
	 
	 

