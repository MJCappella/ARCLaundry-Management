/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("user");
        String email = (String) session.getAttribute("email");
        String userType = (String) session.getAttribute("userType");
        String phone = (String) session.getAttribute("phone");
        
        if (username != null) {
            // Forward to profile.jsp with user data
            request.setAttribute("username", username);
            request.setAttribute("email", email);
            request.setAttribute("userType", userType);
            request.setAttribute("phone", phone);
            request.getRequestDispatcher("/Profile.jsp").forward(request, response);
        } else {
            // User not logged in
            response.sendRedirect("Login.jsp");
        }
    }
}







//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//@WebServlet("/Profile")
//public class ProfileServlet extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session = request.getSession();
//        String username = (String) session.getAttribute("user");
//        if (username != null) {
//            try {
//                // Establish database connection
//                String dbURL = "jdbc:mysql://localhost:3306/laundry_users";
//                String user = "root";
//                String dbPassword = "mAjimaji21!!";
//                Connection conn = DriverManager.getConnection(dbURL, user, dbPassword);
//                
//                // Prepare and execute SQL query
//                String sql = "SELECT Email, UserType, Phone FROM users WHERE Username = ?";
//                PreparedStatement stmt = conn.prepareStatement(sql);
//                stmt.setString(1, username);
//                ResultSet rs = stmt.executeQuery();
//                
//                if (rs.next()) {
//                    // Retrieve user data
//                    String email = rs.getString("Email");
//                    String userType = rs.getString("UserType");
//                    String phone = rs.getString("Phone");
//                    
//                    // Set user data as session attributes
//                    session.setAttribute("email", email);
//                    session.setAttribute("userType", userType);
//                    session.setAttribute("phone", phone);
//                    
//                    // Forward to profile.jsp
//                    request.getRequestDispatcher("/Profile.jsp").forward(request, response);
//                } else {
//                    // User not found
//                    response.sendRedirect("Login.jsp");
//                }
//                
//                conn.close();
//            } catch (SQLException e) {
//                e.printStackTrace();
//                // Handle database errors
//            }
//        } else {
//            // User not logged in
//            response.sendRedirect("Login.jsp");
//        }
//    }
//}
