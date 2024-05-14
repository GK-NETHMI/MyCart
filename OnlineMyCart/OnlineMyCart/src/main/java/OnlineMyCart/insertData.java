package OnlineMyCart;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/insertDataServlet")
public class insertData extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		  String ItemID = request.getParameter("ItemID");
		  String customerID =request.getParameter("customerID");
		  String category = request.getParameter("category");
		  String ItemPrice =request.getParameter("ItemPrice");
		  String quntity = request.getParameter("quntity");
		  String TotalPrice = request.getParameter("TotalPrice");
		  String currentDate=request.getParameter("currentDate");
		  
		  boolean isTrue;
		  
		  isTrue=CustomerDBUtil.insertcustomer(ItemID,customerID,category,ItemPrice,quntity,TotalPrice,currentDate);
	      

			if(isTrue == true) {
				List<user> cartDetails = CustomerDBUtil.getCustomer(customerID);
				request.setAttribute("cartDetails", cartDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("cartDetails.jsp");
				dis.forward(request, response);
				
			} else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
			}
	
	}

}
