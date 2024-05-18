/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
//import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class Logout extends HttpServlet {


     @Override
    protected void doGet(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException
            {
    
//            HttpSession session = request.getSession();
//            session.invalidate();
//                
//            response.sendRedirect("Login.jsp");
                HttpSession session = request.getSession(false); // Retrieve session, if exists
                if (session != null) {
                    session.invalidate(); // Invalidate session
                }
                response.sendRedirect("Login.jsp"); // Redirect to login page after logout
                
                
            }
}


