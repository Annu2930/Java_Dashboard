<%@ page import="java.sql.*, java.io.*" %>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Avika2930@");

    // Create a prepared statement to avoid SQL injection
    String query = "SELECT * FROM login1 WHERE username = ? AND password = ?";
    PreparedStatement pstmt = con.prepareStatement(query);
    pstmt.setString(1, username);
    pstmt.setString(2, password);

    ResultSet rs = pstmt.executeQuery();

    if (rs.next()) {
        // If username and password match, redirect to welcome.jsp
        response.sendRedirect("index.jsp");
    } else {
        // If no matching record found, print "Login Failed"
        out.println("Login Failed");
        // You can also redirect to index.jsp here if needed
        // response.sendRedirect("index.jsp");
    }

    // Close resources
    rs.close();
    pstmt.close();
    con.close();
} catch (Exception e) {
    // Print any exception that occurs
    e.printStackTrace(new PrintWriter(out));
}
%>
