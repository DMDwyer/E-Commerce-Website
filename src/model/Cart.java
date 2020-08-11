package model;

public class Cart {
	
	
	   private String name;
	   private String number;
	   private String description;
	   private double price;
	   private int quantity;
	   private String image;
	  
	  
	   

	   public Cart(String name, String number, String description, double price, int quantity, String image) {
	      this.name = name;
	      this.number = number;
	      this.description = description;
	      this.price = price;
	      this.quantity = quantity;
	      this.image = image;
	   }

	   
	   public Cart(String number, int quantity) {
		      this.number = number;
		      this.quantity = quantity;
		      
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
		
		public String getImage() {
			return image;
			}

		public void setImage(String image) {
			this.image = image;
			}
				   

}	

	   