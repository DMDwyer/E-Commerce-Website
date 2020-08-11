package dao;

import model.Part;
import model.User;




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public enum UserDAO {
	
instance;
	
	
	public User checkLogin(String email, String password){
		Connection connection = Utils.getConnection();
		User user = null;
		
		try{
			PreparedStatement psmt = connection.prepareStatement("SELECT * FROM USER WHERE EMAIL = ? AND PASSWORD = ?");
			psmt.setString(1, email);
			psmt.setString(2, password);
			ResultSet rs = psmt.executeQuery();
			if (rs.next()){
				user = new User(
						rs.getString("name"),
						rs.getString("email"),
						rs.getString("password"),
						rs.getString("role"));
			}
			psmt.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	
	}
	
	public void save(User user){
		Connection connection = Utils.getConnection();
		
		try{
			PreparedStatement psmt = connection
					.prepareStatement("INSERT INTO USER (name, email, password, role) VALUES (?,?,?,'user')");
			psmt.setString(1, user.getName());
			psmt.setString(2, user.getEmail());
			psmt.setString(3, user.getPassword());
			
			
			psmt.executeUpdate();
			
			psmt.close();
			connection.close();
		} catch (SQLException e){
			e.printStackTrace();
		}
		
	}
		
		public void saveAdmin(User user){
			Connection connection = Utils.getConnection();
			
			try{
				PreparedStatement psmt = connection
						.prepareStatement("INSERT INTO USER (name, email, password, role) VALUES (?,?,?,?)");
				psmt.setString(1, user.getName());
				psmt.setString(2, user.getEmail());
				psmt.setString(3, user.getPassword());
				psmt.setString(4, user.getRole());
				
				System.out.println(user.getRole());
				
				psmt.executeUpdate();
				
				psmt.close();
				connection.close();
			} catch (SQLException e){
				e.printStackTrace();
			}

}
	
		 public static int userExists(String email) {
			 Connection connection = Utils.getConnection();

		      int checkEmail = 0;
	     try {
	        PreparedStatement psmt = connection
	              .prepareStatement("SELECT EMAIL FROM USER WHERE EMAIL = ?");
	        psmt.setString(1, email);
	        
	        ResultSet rs = psmt.executeQuery();

	        if (rs.next()) {
	        	 checkEmail = 1;
	        }
	     } catch (SQLException e) {
	        e.printStackTrace();
	     }
	     return checkEmail;
	  
	}
		
}
