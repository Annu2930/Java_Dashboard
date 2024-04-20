<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");

    if (id != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Avika2930@");

            PreparedStatement pstmt = con.prepareStatement("DELETE FROM projects_data WHERE Project_id=?");
            pstmt.setString(1, id);

            int rowsDeleted = pstmt.executeUpdate();

            if (rowsDeleted > 0) {
                out.println("<script>alert('Project data deleted successfully!'); window.location.href='index.jsp';</script>");
            } else {
                out.println("<script>alert('Failed to delete project data!'); window.location.href='index.jsp';</script>");
            }

            pstmt.close();
            con.close();
        } catch (ClassNotFoundException e) {
            out.print("<div class=\"message\">Driver not found: " + e.getMessage() + "</div>");
        } catch (SQLException e) {
            out.print("<div class=\"message\">SQL Exception: " + e.getMessage() + "</div>");
        }
    } else {
        out.println("<script>alert('Invalid parameters!'); window.location.href='index.jsp';</script>");
    }
%>
