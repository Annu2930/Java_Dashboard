
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fetched Data</title>
    <style>
        /* Style for the table */
        table {
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Projects Data</h2>
    <table>
        <thead>
            <tr>
                <th>Projects_id</th>
                <th>Projects_name</th>
                <th>Projects_budget</th>
                <th>Projects_status</th>
                
               
        </thead>
        <tbody>
            <% 
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Avika2930@");

                PreparedStatement pstmt = con.prepareStatement("SELECT * FROM projects_data");
                ResultSet rs = pstmt.executeQuery();

                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("project_id") + "</td>");
                    out.println("<td>" + rs.getString("project_name") + "</td>");
                    out.println("<td>" + rs.getString("project_budget") + "</td>");
                    out.println("<td>" + rs.getString("project_status") + "</td>");
                    
                    out.println("</tr>");
                }

                rs.close();
                pstmt.close();
                con.close();
            } catch (ClassNotFoundException e) {
                out.print("<div class=\"message\">Driver not found: " + e.getMessage() + "</div>");
            } catch (SQLException e) {
                out.print("<div class=\"message\">SQL Exception: " + e.getMessage() + "</div>");
            }
            %>
        </tbody>
    </table>
</body>
</html>
