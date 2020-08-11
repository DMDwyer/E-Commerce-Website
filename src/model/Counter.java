package model;

import java.util.Date;

public class Counter {
	
		private int hits;
	
	   private int hitUsed = 0;
	  

	   public Counter(int hits) {
		   this.hits = hits;
	   }
	   
	   
	   
	   public int getHits() {
		      return hits;
		   }

	   public void setHits(int hits) {
		      this.hits = hits;
	   }
		   
	   
	   public int getHitUsed() {
		      return hitUsed;
		   }

	   public void setHitUsed(int hitUsed) {
		      this.hitUsed = hitUsed;
	   }

}
