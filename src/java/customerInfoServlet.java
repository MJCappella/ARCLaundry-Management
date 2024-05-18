/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */



import java.io.IOException;
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



public class customerInfoServlet extends HttpServlet {
//    protected void doPost(HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException{
        // JDBC URL, username, and password
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/laundry_users";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "mAjimaji21!!";

    // JDBC driver class name
    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";

    static {
        try {
            // Load JDBC driver
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException("Failed to load JDBC driver: " + JDBC_DRIVER);
        }
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String firstName = request.getParameter("firstName");
        String lastName= request.getParameter("lastName");
        String phoneNumber = request.getParameter("phoneNumber");
        //String email= request.getParameter("email");
        //String message= request.getParameter("message");

        // Insert data into the database
        if (registerUser(firstName, lastName, phoneNumber)) {
            // Registration successful, redirect to success.jsp
            response.sendRedirect("order_details.jsp");
        } else {
            // Registration failed, redirect to failure.jsp
            response.sendRedirect("contact_details.jsp");
        }
    }

    private boolean registerUser(String firstName, String lastName, String phoneNumber) {
        // SQL statement to insert user data
        String sql = "INSERT INTO contact_details (firstName, lastName, phoneNumber) VALUES (?, ?, ? )";

        try (
            // Get database connection
            Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
            // Create prepared statement with SQL
            PreparedStatement preparedStatement = connection.prepareStatement(sql)
        ) {
            // Set parameters in the prepared statement
            preparedStatement.setString(1, firstName);
            preparedStatement.setString(2, lastName);
            preparedStatement.setString(3, phoneNumber);
            //preparedStatement.setString(5, message);

            // Execute the SQL statement and check if rows were affected
            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
// Handle database errors
                        return false;
        }
    }
}
    
