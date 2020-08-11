package model;

import java.util.Date;

public class Feedback {
	
		
	   private String name;
	   private Date date;
	  
	   

	   public Feedback(String name) {
		   this.name = name;
	   }
	   
	   public Feedback(String name, Date date) {
		      this.date = date;
			   this.name = name;
		   }
	   
	   public String getName() {
		      return name;
		   }

		   public void setName(String name) {
		      this.name = name;
		   }
		   
		   
		   
		   public Date getDate() {
			  return date;
		   }

			   
		   public void setDate(Date date) {
			  this.date = date;
		   }
	   

}
