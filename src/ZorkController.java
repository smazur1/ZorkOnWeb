

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class zorkcontroller
 */
@WebServlet("/zorkcontroller")
public class ZorkController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Preprocess request: we actually don't need to do any business stuff, so just display JSP.
		request.getRequestDispatcher("/Hello.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Postprocess request: gather and validate submitted data and display the result in the same JSP.

		// Prepare messages.
		    HashMap<String, String> info = new HashMap<String, String>();
		  	String messages = "";
		     request.setAttribute("messages", messages);

		// Get and validate name.
		String roomID = request.getParameter("roomnum");
		int roomNum = Integer.parseInt(roomID);
		String direction = request.getParameter("direction");
		
		//	        if (name == null || name.trim().isEmpty()) {
		//	            messages.put("custid", "Please enter Customer ID");
		//	        } else if (!name.matches("\\d+")) {
		//	            messages.put("custid", "Please enter Numeric digits only");
		//	        }


		// No validation errors? Do the business job!
		//        if (messages.isEmpty()) {

	
		RoomDB  rdb = new RoomDB();
		
		
	System.out.println("room " + roomNum + "  direction " + direction);
	
	
	
	
		Room r = rdb.getRoom(roomNum, direction);

		System.out.println("getName" + r);
	//	String newroomnum = r.getRoomnum();
		info.put("roomnum", r.getRoomnum());
		info.put("name", r.getName());
		info.put("direction", r.getWherecango());

		request.setAttribute("messages", info );

		//      messages.put("success", String.format("Hello, your name is %s and your age is %s and your "
		//      		+ "favorite color is %s!" , name, age, color));
		//        }

		request.getRequestDispatcher("/output.jsp").forward(request, response);
	}
}


