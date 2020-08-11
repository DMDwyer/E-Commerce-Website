package dao;

import java.sql.Connection;   
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

import model.Feedback;
import model.Part;


public enum FeedbackDAO {
	
instance;
	
	
	
	public void save(Feedback feedback){
		Connection connection = Utils.getConnection();
		
		try{
			
			
			
			PreparedStatement psmt = connection
					.prepareStatement("INSERT INTO FEEDBACK (name, creation_date) VALUES (?,NOW)");
		
			psmt.setString(1, feedback.getName());
			
			psmt.executeUpdate();
			
			psmt.close();
			connection.close();
		} catch (SQLException e){
			e.printStackTrace();}
		}
		
		
	
	 public List<Feedback> list() {
		 Connection connection = Utils.getConnection();

	      List<Feedback> feedbackList = new ArrayList<Feedback>();
     try {
        PreparedStatement psmt = connection
              .prepareStatement("SELECT * FROM FEEDBACK");

        ResultSet rs = psmt.executeQuery();

        while (rs.next()) {
          Feedback f = new Feedback(rs.getString("name"), rs.getDate("creation_date"));
          feedbackList.add(f);
        }
     } catch (SQLException e) {
        e.printStackTrace();
     }
     return feedbackList;
  
}
	
}
