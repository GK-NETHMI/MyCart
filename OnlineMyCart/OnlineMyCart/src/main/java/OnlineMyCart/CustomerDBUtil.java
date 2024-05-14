package OnlineMyCart;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	//validate method if,check item with the given id's
	public static boolean validate(String customerID, String ItemID) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//sql query to check given customerID and ItemID
			String sql = "select * from addcart where customerID='"+customerID+"' and ItemID='"+ItemID+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	//retrieve a list of items in a customer'scart
	public static List<user> getCustomer(String customer_ID) {
		
		ArrayList<user> getuser = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//select items in the cart for a given customer
			String sql = "select * from addcart where customerID='"+customer_ID+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String ItemID = rs.getString(2);
				String customerID = rs.getString(3);
				String category = rs.getString(4);
				double ItemPrice = rs.getDouble(5);
				int quntity = rs.getInt(6);
				double TotalPrice = rs.getDouble(7);
				String currentDate = rs.getString(8);
					//create user object and add it to list		
				user user = new user(id,ItemID,customerID,category,ItemPrice,quntity,TotalPrice,currentDate);
				getuser.add(user);
			}
			
		} catch (Exception e) {  //handle exception
			
		}
		
		return getuser;	
	}
	//insert new item into a according customerID
	public static boolean insertcustomer(String ItemID, String customerID, String category, String ItemPrice, String quntity, String TotalPrice,String currentDate) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		//insert above new items into the cart
    		String sql = "insert into addcart values (0,'"+ItemID+"','"+customerID+"','"+category+"','"+ItemPrice+"','"+quntity+"','"+TotalPrice+"','"+currentDate+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;    //if,the above sql is true,retrun boolean expression is true
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();  //print the catched error
    	}
 	
    	return isSuccess;
    }
	//update data of an item in customer cart
public static boolean updateData(String id,String ItemID, String customerID, String category, double ItemPrice, int quntity, double TotalPrice,String currentDate)  {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		//query for update the item's data in cart
    		String sql = "update addcart set ItemID='"+ItemID+"',customerID='"+customerID+"',category='"+category+"',ItemPrice='"+ItemPrice+"',quntity='"+quntity+"',TotalPrice='"+TotalPrice+"',currentDate='"+currentDate+"'"
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;           
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
//delete an item,if user want
public static boolean deleteData(String id) {
	
	int cartId = Integer.parseInt(id);
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		//sql query to delete an iteam in cart 
		String sql = "delete from addcart where id='"+cartId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
}
