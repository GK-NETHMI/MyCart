package OnlineMyCart;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateDataServlet")
public class updateData extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		  String id = request.getParameter("id");
		  String ItemID = request.getParameter("ItemID");
		  String customerID =request.getParameter("customerID");
		  String category = request.getParameter("category");
		  double ItemPrice = Double.parseDouble(request.getParameter("ItemPrice"));
	      int quntity = Integer.parseInt(request.getParameter("quntity"));
	      double TotalPrice = Double.parseDouble(request.getParameter("TotalPrice"));
	      String currentDate = request.getParameter("currentDate");

		  boolean isTrue;
		  
		  isTrue=CustomerDBUtil.updateData(id,ItemID,customerID,category,ItemPrice,quntity,TotalPrice,currentDate);
	      
		  if(isTrue == true) {
				
				List<user> cartDetails = CustomerDBUtil.getCustomer(customerID);
				request.setAttribute("cartDetails", cartDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("cartDetails.jsp");
				dis.forward(request, response);
			}
			else {
				List<user> cartDetails = CustomerDBUtil.getCustomer(id);
				request.setAttribute("cartDetails", cartDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("product.jsp");
				dis.forward(request, response);
			}
	
	
	
	}

}
