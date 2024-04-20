<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Admin Panel</title>
</head>
<body>
    <!-- Your existing HTML content for Admin Panel -->

    <!-- Add a section to display uploaded data -->
    <h2>Uploaded Data</h2>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>DOB</th>
            <th>Image</th>
            <th>PDF</th>
        </tr>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Avika2930@");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM image");
                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("name") + "</td>");
                    out.println("<td>" + rs.getString("email") + "</td>");
                    out.println("<td>" + rs.getString("dob") + "</td>");
                    out.println("<td><img src='" + rs.getString("image_path") + "' height='100'></td>");
                    out.println("<td><a href='" + rs.getString("pdf_path") + "'>Download PDF</a></td>");
                    out.println("</tr>");
                }
                con.close();
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            }
        %>
    </table>
</body>
</html>
