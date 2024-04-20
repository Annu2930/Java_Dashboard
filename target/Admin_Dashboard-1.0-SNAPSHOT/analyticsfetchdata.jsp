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

        .edit-btn, .delete-btn {
            padding: 5px 10px;
            cursor: pointer;
        }

        .edit-btn:hover, .delete-btn:hover {
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
    <h2>Analytics Data</h2>
    <table>
        <thead>
            <tr>
                <th>Projects_id</th>
                <th>Projects_name</th>
                <th>Projects_budget</th>
                <th>Projects_status</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
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
                    out.println("<td>" + rs.getString("Project_id") + "</td>");
                    out.println("<td>" + rs.getString("Project_name") + "</td>");
                    out.println("<td>" + rs.getString("Project_budget") + "</td>");
                    out.println("<td>" + rs.getString("Project_status") + "</td>");
                    // Edit button
                    out.println("<td><a href='edit.jsp?id=" + rs.getString("Project_id") + "&name=" + rs.getString("Project_name") + "&budget=" + rs.getString("Project_budget") + "&status=" + rs.getString("Project_status") + "' class='edit-btn'>Edit</a></td>");
                    // Delete button
                    out.println("<td><a href='delete.jsp?id=" + rs.getString("Project_id") + "' class='delete-btn'>Delete</a></td>");
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
