package OnlineMyCart;

public class user {

	private int id;
	private String ItemID;
	private String customerID;
	private String category;
	private double ItemPrice;
	private int quntity;
	private double TotalPrice;
	private String currentDate;
	
	public user(int id, String ItemID, String customerID, String category, double ItemPrice, int quntity,
			double TotalPrice,String currentDate) {
		super();
		this.id = id;
		this.ItemID = ItemID;
		this.customerID = customerID;
		this.category = category;
		this.ItemPrice = ItemPrice;
		this.quntity = quntity;
		this.TotalPrice=TotalPrice;
		this.currentDate=currentDate;
	}

	public int getid() {
		return id;
	}

	public String getItemID() {
	   return ItemID;
	}


	public String getcustomerID() {
		return customerID;
	}


	public String getcategory() {
		return category;
	}


	public double getItemPrice() {
		return ItemPrice;
	}

	

	public int getquntity() {
		return quntity;
	}


	public double getTotalPrice() {
		return TotalPrice;
	}
	
	public String getcurrentDate() {
		return currentDate;
	}
	
}
