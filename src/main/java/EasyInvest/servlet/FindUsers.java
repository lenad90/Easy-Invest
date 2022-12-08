package EasyInvest.servlet;

import EasyInvest.dal.*;
import EasyInvest.model.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.servlet.annotation.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/findusers")
public class FindUsers extends HttpServlet {
	
	protected UsersDao usersDao;
	
	@Override
	public void init() throws ServletException {
		usersDao = UsersDao.getInstance();
	}
	
/*Do Get*/
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// Map for storing messages.
        Map<String, String> messages = new HashMap<String, String>();
        req.setAttribute("messages", messages);

        List<Users> users = new ArrayList<Users>();
        

        String firstName = req.getParameter("firstname");
        if (firstName == null || firstName.trim().isEmpty()) {
            messages.put("success", "Please enter a valid firstname.");
        } else {
        	try {
        		//get user from usersDao by first name
        		users = usersDao.getUsersFromFirstName(firstName);
        		if (!users.contains(firstName)) {
    				messages.put("success", "User with this first name is not found.");
    			} else {
            	messages.put("success", "Displaying results for users with firstname: " + firstName);
            	}
            } catch (SQLException e) {
    			e.printStackTrace();
    			throw new IOException(e);
            }
        	messages.put("previousFirstName", firstName);
        }
        req.setAttribute("users", users);
        
        req.getRequestDispatcher("/FindUsers.jsp").forward(req, resp);
	}

/*Do Post*/
//@Override
//    public void doPost(HttpServletRequest req, HttpServletResponse resp)
//    		throws ServletException, IOException {
//        
//        Map<String, String> messages = new HashMap<String, String>();
//        req.setAttribute("messages", messages);
//
//        List<Users> users = new ArrayList<Users>();
//
//        String firstName = req.getParameter("firstname");
//        if (firstName == null || firstName.trim().isEmpty()) {
//            messages.put("success", "Please enter a valid name.");
//        } else {
//        	// Retrieve membership users, and store as a message.
//        	try {
//        		users = usersDao.getUsersFromFirstName(firstName);
//        				
//            } catch (SQLException e) {
//    			e.printStackTrace();
//    			throw new IOException(e);
//            }
//        	messages.put("success", "Displaying results for " + firstName);
//        }
//        req.setAttribute("users", users);
//        
//        req.getRequestDispatcher("/FindUsers.jsp").forward(req, resp);
//    }
}
