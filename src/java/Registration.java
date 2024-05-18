/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import org.apache.derby.client.am.ResultSet;

//@WebServlet("/Registration")
public class Registration extends HttpServlet {
//    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String email = request.getParameter("email");
        String userType = request.getParameter("userType");
        String phone = request.getParameter("phone");

        // JDBC Database Connection Information
        String url = "jdbc:mysql://localhost:3306/laundry_users";
        String user = "root";
        String dbPassword = "mAjimaji21!!";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url, user, dbPassword)) {
                String query = "INSERT INTO users(Username, Password, ConfirmPassword, Email, UserType, Phone) VALUES (?, ?, ?, ?, ?,?)";
                try (PreparedStatement pst = con.prepareStatement(query)) {
                    pst.setString(1, username);
                    pst.setString(2, password);
                    pst.setString(3, confirmPassword);
                    pst.setString(4, email);
                    pst.setString(5, userType);
                    pst.setString(6, phone);
                    
                    int rowsaffected = pst.executeUpdate();
                 if(rowsaffected > 0){
                     response.sendRedirect("Login.jsp");
                 }else{
                     response.sendRedirect("Registration.jsp");
                 }   
                    
                    
                  
         
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        }
    }
}
