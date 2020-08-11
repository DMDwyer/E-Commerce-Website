package model;

import java.util.Date;

public class Orders {
	   private String user;
	   private String name;
	   private String number;
	   private String description;
	   private double price;
	   private int quantity;
	   private String status;
	   private Date date;
	  
	  
	   

	   public Orders(String user, String name, String number, String description, double price, int quantity, String status, Date date) {
	      this.user = user;
		  this.name = name;
	      this.number = number;
	      this.description = description;
	      this.price = price;
	      this.quantity = quantity;
	      this.status = status;
	      this.date= date;
	   }

	   public String getUser() {
		      return user;
		   }

	   public void setUser(String user) {
		      this.user = user;
		   }
	  	   
	   public String getName() {
	      return name;
	   }

	   public void setName(String name) {
	      this.name = name;
	   }

	  
	   public String getNumber() {
	      return number;
	   }

	   public void setNumber(String number) {
	      this.number = number;
	   }
	   
	
	   public String getDescription() {
		   return description;
		   }

	   public void setDescripion(String description) {
		    this.description = description;
		   }
		  
		   
	   	public double getPrice() {
			 return price;
			}

		public void setPrice(double price) {
			 this.price = price;
			}
			   
		
		public int getQuantity() {
			return quantity;
			}

		public void setQuantity(int quantity) {
			this.quantity = quantity;
			}
		
		public String getStatus() {
		      return status;
		   }

	   public void setStatus(String status) {
		      this.status = status;
		   }
		
		public Date getDate() {
			  return date;
		   }

			   
		 public void setDate(Date date) {
			  this.date = date;
		   }
				   
}
