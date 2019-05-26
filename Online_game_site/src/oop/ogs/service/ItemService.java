package oop.ogs.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import oop.ogs.model.Item;
import oop.ogs.model.feedback;
import oop.ogs.model.Coustomer;
import oop.ogs.util.DBConnectionUtil;

public class ItemService implements Interface_ItemService {

	private static Connection connection;
	private PreparedStatement preparedStatement;

//-------------------------------------------------------------------------------------------------------------------
	@Override
	public Item getItemBy_id(int item_id) {

		Item fnew = new Item();

		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement = connection.prepareStatement("select * from game_item where item_id =  ?");
			preparedStatement.setInt(1, item_id);
			connection.setAutoCommit(false);
			ResultSet result = preparedStatement.executeQuery();
			while (result.next()) {

				fnew.setItem_id(result.getInt(1));
				fnew.setItem_cato_id(result.getInt(2));
				fnew.setItem_name(result.getString(3));
				fnew.setItem_image(result.getString(4));
				fnew.setItem_discrption(result.getString(5));
				fnew.setItem_price(result.getString(6));
				fnew.setItem_rate(result.getInt(7));
				fnew.setItem_graphic_rate(result.getInt(8));
				fnew.setItem_levels(result.getString(9));
				fnew.setItem_play_mode(result.getString(10));
				fnew.setItem_update_time(result.getString(11));
				fnew.setItem_full_discription(result.getString(12));

			}
			connection.commit();

		} catch (ClassNotFoundException | SQLException e) {

		}
		return fnew;
	}

//-----------------------------------------------------------------------------------------------------------------		
	@Override
	public ArrayList<Item> getitems(int catoid) {

		ArrayList<Item> arrayList = new ArrayList<Item>();
		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement = connection.prepareStatement("select * from game_item WHERE Item_cato_id= ? ");
			preparedStatement.setInt(1, catoid);
			connection.setAutoCommit(false);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Item item = new Item();
				item.setItem_id(resultSet.getInt(1));
				item.setItem_cato_id(resultSet.getInt(2));
				item.setItem_name(resultSet.getString(3));
				item.setItem_image(resultSet.getString(4));
				item.setItem_discrption(resultSet.getString(5));
				item.setItem_price(resultSet.getString(6));
				item.setItem_rate(resultSet.getInt(7));
				arrayList.add(item);

			}

			connection.commit();

		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e);
		}

		return arrayList;
	}

	private ArrayList<Item> getAction(int itemid) {

		return null;
	}

	@Override
	public boolean set_coustemer(Coustomer c1) {
		// TODO Auto-generated method stub
		String query;
		try {
			

			connection = DBConnectionUtil.getDBConnection();
			query = "INSERT INTO coustemer(coustermer_firstname,coustermer_lastname,coustemer_username,coustermer_email,coustermer_countrycode,coustermer_phonenumber,coustermer_postalcode,coustemer_address,coustemer_password,coustemer_confirmpassword)VALUES(? , ? , ? , ? , ? , ? , ? ,? ,? , ?)";
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, c1.getFirst_name());
			preparedStatement.setString(2, c1.getLast_name());
			preparedStatement.setString(3, c1.getUser_name());
			preparedStatement.setString(4, c1.getEmail());
			preparedStatement.setInt(5, c1.getCountry_code());
			preparedStatement.setInt(6, c1.getPhone_number());
			preparedStatement.setInt(7, c1.getPostal_code());
			preparedStatement.setString(8, c1.getAdress());
			preparedStatement.setString(9, c1.getPassword());
			preparedStatement.setString(10, c1.getConfirm_password());
			
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();


		} catch (Exception e) {
					System.out.println(e);
		}

		return true ;
	}





	@Override
	public Coustomer chek_login(Coustomer c2) {
		// TODO Auto-generated method stub
		
		
		
		
		return null;
	}

	@Override
	public Coustomer getcustomerDetails(int coustemer_id) {
		// TODO Auto-generated method stub
		Coustomer profile =  new Coustomer();
		
		
		try {
		connection = DBConnectionUtil.getDBConnection();
		preparedStatement =  connection.prepareStatement("SELECT * FROM coustemer WHERE coustermer_id = ?");
		preparedStatement.setInt(1,coustemer_id );
		ResultSet result = preparedStatement.executeQuery();
		
		while(result.next()) {
			profile.setCoustemer_id(result.getInt(1));
			profile.setFirst_name(result.getString(2));
			profile.setLast_name(result.getString(3));
			profile.setUser_name(result.getString(4));
			profile.setEmail(result.getString(5));
			profile.setCountry_code(result.getInt(6));
			profile.setPhone_number(result.getInt(7));
			profile.setPostal_code(result.getInt(8));
			profile.setAdress(result.getString(9));
			profile.setPassword(result.getString(10));
			


			
		}
		
		
		
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		
		return profile;
	}

	@Override
	public boolean update_cutomerDetails(Coustomer c3 , int cusid) {
		// TODO Auto-generated method stub
		
	
		
		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement =  connection.prepareStatement("UPDATE coustemer SET coustermer_firstname = ? , coustermer_lastname = ? , coustemer_username = ? , coustermer_email = ? , coustermer_phonenumber = ? , coustemer_address = ? , coustemer_password = ? ,  coustemer_confirmpassword = ? WHERE coustermer_id = ?");
			
			
			preparedStatement.setString(1, c3.getFirst_name());
			preparedStatement.setString(2, c3.getLast_name());
			preparedStatement.setString(3, c3.getUser_name());
			preparedStatement.setString(4, c3.getEmail());
			preparedStatement.setInt(5, c3.getPhone_number());
			preparedStatement.setString(6, c3.getAdress());
			preparedStatement.setString(7, c3.getPassword());
			preparedStatement.setString(8, c3.getConfirm_password());
			preparedStatement.setInt(9, cusid);
			
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
			
			return true ;
		}
			
			catch(Exception e){
				
				e.printStackTrace();
				System.out.println("Errp qary");
			}
		
		
		return false ;
		
		
		
		
	
	}

	@Override
	public boolean set_feedback(feedback f1) {
		// TODO Auto-generated method stub
		try {
			
			connection  =  DBConnectionUtil.getDBConnection();
			preparedStatement =  connection.prepareStatement("INSERT INTO feedback(user_name , user_email , feedback) VALUES (?,?,?)");
			
			preparedStatement.setString(1, f1.getName());
			preparedStatement.setString(2, f1.getEmail());
			preparedStatement.setString(3, f1.getFeedback());
			
			preparedStatement.executeUpdate();
			System.out.println(preparedStatement);
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
		
		
		
		
		
		return true;
	}

	@Override
	public boolean delete_userDetails(int cus_id) {
		// TODO Auto-generated method stub
		try {
		connection  =  DBConnectionUtil.getDBConnection();
		preparedStatement =  connection.prepareStatement("DELETE FROM coustemer WHERE coustermer_id =? ");
		preparedStatement.setInt(1, cus_id);
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return true;
	}

	@Override
	public boolean delete_feedback(int id) {
		try {
			connection  =  DBConnectionUtil.getDBConnection();
			preparedStatement =  connection.prepareStatement("DELETE FROM feedback WHERE feedback_id =? ");
			preparedStatement.setInt(1, id);
			}
			catch(Exception e) {
				
				e.printStackTrace();
				
			}
			return true;
		
		
		
	}

	@Override
	public feedback viewfeedback(int id) {
		feedback fnew= new feedback();

		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement = connection.prepareStatement("select * from feedback where feedback_id =  ?");
			preparedStatement.setInt(1, id);
			connection.setAutoCommit(false);
			ResultSet result = preparedStatement.executeQuery();
			while (result.next()) {

				fnew.setName(result.getString(2));
				fnew.setEmail(result.getString(3));
				fnew.setFeedback(result.getString(4));
				
			

			}
			connection.commit();

		} catch (ClassNotFoundException | SQLException e) {

		}
		return fnew;
		
		
		
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean update_feedback(feedback f1, int fid) {
		try {
		connection = DBConnectionUtil.getDBConnection();
		preparedStatement =  connection.prepareStatement("UPDATE feedback SET user_name = ? , user_email = ? , feedback = ? ");
		preparedStatement.executeUpdate();
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return true;
	}
	
	
}
