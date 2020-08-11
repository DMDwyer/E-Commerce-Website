package model;

public class Part {
	
		
	   private String name;
	   private String number;
	   private String description;
	   private double price;
	   private int stock;
	   private String image;
	  
	   

	   public Part(String name, String number, String description, double price, int stock, String image ) {
	      this.name = name;
	      this.number = number;
	      this.description = description;
	      this.price = price;
	      this.stock = stock;
	      this.image = image;
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
			   
		
		public int getStock() {
			return stock;
			}

		public void setStock(int stock) {
			this.stock = stock;
			}
				   

		public String getImage() {
			 return image;
			  }

		public void setImage(String image) {
			  this.image = image;
			   }

	   

}
