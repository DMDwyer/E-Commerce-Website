package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Counter;
import model.Part;

public enum CounterDAO {
	
	instance;
	
	public void hit() {

	      Connection connection = Utils.getConnection();
	    
	      try {
	    	  
	    	 
	    	  PreparedStatement psmt = connection
						.prepareStatement("UPDATE COUNTER SET HITS = HITS + 1");

	         psmt.executeUpdate();
	       
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } 
	 
}
	

	
	 public List<Counter> list() {
		 Connection connection = Utils.getConnection();

	      List<Counter> counterList = new ArrayList<Counter>();
     try {
        PreparedStatement psmt = connection
              .prepareStatement("SELECT * FROM COUNTER");
        
        ResultSet rs = psmt.executeQuery();

        while (rs.next()) {
           Counter c = new Counter(rs.getInt("hits"));
           counterList.add(c);
           System.out.print(c);
        }
     } catch (SQLException e) {
        e.printStackTrace();
     }
     return counterList;
  
}
	 
	 public Counter show() {
	      Counter counter = null;

	      Connection connection = Utils.getConnection();
	    
	      try {
	    	  
	         String sql = "SELECT * FROM COUNTER";
	         PreparedStatement psmt = connection.prepareStatement(sql);
	        

	         ResultSet rs = psmt.executeQuery();
	         rs.next();

	         int hits = rs.getInt("hits");
	        
	         counter = new Counter(hits);
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return counter;
	   }
	 

}
