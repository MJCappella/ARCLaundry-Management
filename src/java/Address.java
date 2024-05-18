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
public class Address extends HttpServlet {
//    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String blockName = request.getParameter("blockName");
        String hostelName = request.getParameter("hostelName");
        String roomNumber = request.getParameter("roomNumber");

        // JDBC Database Connection Information
        String url = "jdbc:mysql://localhost:3306/laundry_users";
        String user = "root";
        String dbPassword = "mAjimaji21!!";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url, user, dbPassword)) {
                String query = "INSERT INTO address_details(blockName, hostelName, roomNumber) VALUES (?, ?, ?)";
                try (PreparedStatement pst = con.prepareStatement(query)) {
                    pst.setString(1, blockName);
                    pst.setString(2, hostelName);
                    pst.setString(3, roomNumber);
                    
                    int rowsaffected = pst.executeUpdate();
                 if(rowsaffected > 0){
                     response.sendRedirect("success.jsp");
                 }else{
                     response.sendRedirect("student_address.jsp");
                 }   
                    
                    
                  
         
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        }
    }
}
