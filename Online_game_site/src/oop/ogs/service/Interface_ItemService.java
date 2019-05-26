package oop.ogs.service;


import java.util.ArrayList;
import java.util.logging.Logger;

import oop.ogs.model.Item;
import oop.ogs.model.Coustomer;
import oop.ogs.model.feedback;

public interface Interface_ItemService {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(Interface_ItemService.class.getName());

	
	public   Item getItemBy_id(int item_id);
	
	
	public ArrayList<Item> getitems(int catoid);
	
	public boolean set_coustemer(Coustomer c1);
	
	public Coustomer chek_login(Coustomer c2);
	
	public Coustomer getcustomerDetails(int coustemer_id) ;
	
	public boolean update_cutomerDetails(Coustomer c3 ,  int cusid);
	
	public boolean set_feedback(feedback f1);
	
	public boolean delete_userDetails(int cus_id);
	
	public feedback viewfeedback(int id );
	
	public boolean update_feedback(feedback f1 , int fid);
	
	public boolean delete_feedback(int id);
	
}
