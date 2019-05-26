package oop.ogs.model;

/** this is the item modle class */


public class Item {

	private int item_id;
	
	private int item_cato_id ;
	
	private String item_name;
	
	private String item_image;
	
	private String item_discrption;
	
	private String item_price ;
	
	private int item_rate ;
	
	private int item_graphic_rate;
	
	private String item_levels;
	
	private String item_featchers;
	
	private String item_play_mode ;
	
	private String item_update_time;
	
	private String item_full_discription ;

	
	public String getItem_full_discription() {
		return item_full_discription;
	}


	public void setItem_full_discription(String item_full_discription) {
		this.item_full_discription = item_full_discription;
	}


	public int getItem_id() {
		return item_id;
	}

	
	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}

	
	public int getItem_cato_id() {
		return item_cato_id;
	}

	
	public void setItem_cato_id(int item_cato_id) {
		this.item_cato_id = item_cato_id;
	}

	
	public String getItem_name() {
		return item_name;
	}

	
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	
	public String getItem_image() {
		return item_image;
	}

	
	public void setItem_image(String item_image) {
		this.item_image = item_image;
	}

	
	public String getItem_discrption() {
		return item_discrption;
	}

	
	public void setItem_discrption(String item_discrption) {
		this.item_discrption = item_discrption;
	}

	
	public String getItem_price() {
		return item_price;
	}

	
	public void setItem_price(String item_price) {
		this.item_price = item_price;
	}

	
	public int getItem_rate() {
		return item_rate;
	}

	
	public void setItem_rate(int item_rate) {
		this.item_rate = item_rate;
	}

	
	public int getItem_graphic_rate() {
		return item_graphic_rate;
	}

	
	public void setItem_graphic_rate(int item_graphic_rate) {
		this.item_graphic_rate = item_graphic_rate;
	}

	
	public String getItem_levels() {
		return item_levels;
	}

	
	public void setItem_levels(String item_levels) {
		this.item_levels = item_levels;
	}

	
	public String getItem_featchers() {
		return item_featchers;
	}

	
	public void setItem_featchers(String item_featchers) {
		this.item_featchers = item_featchers;
	}

	
	public String getItem_play_mode() {
		return item_play_mode;
	}

	
	public void setItem_play_mode(String item_play_mode) {
		this.item_play_mode = item_play_mode;
	}

	
	public String getItem_update_time() {
		return item_update_time;
	}

	
	public void setItem_update_time(String item_update_time) {
		this.item_update_time = item_update_time;
	} 
	
	
	
	public String toString() {
		
		return "Item id = " + item_id + "Item cato id  =" +  item_cato_id + "Item Name =" + item_name +  "Item Image =" + item_image+
				"Item Discription =" +  item_discrption + "Item price = " +  item_price + "Item Rate = " +  item_rate + "Item grapic rate " + item_graphic_rate +
				"Item Levels = " + item_levels + "Item featchers = " + item_featchers + "item play mode =" + item_play_mode + "Item update time ="  + item_update_time ;
 				
	
	}
	
	
	
}
