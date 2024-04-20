<%@ page import="java.sql.*" %>
<%
    String project_id = request.getParameter("id");
    String project_name = request.getParameter("name");
    String project_budget = request.getParameter("budget");
    String project_status = request.getParameter("status");

    if (project_id != null && project_name != null && project_budget != null && project_status != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Avika2930@");

            PreparedStatement pstmt = con.prepareStatement("UPDATE projects_data SET project_name=?, project_budget=?, project_status=? WHERE project_id=?");
            pstmt.setString(1, project_name);
            pstmt.setString(2, project_budget);
            pstmt.setString(3, project_status);
            pstmt.setString(4, project_id);

            int rowsUpdated = pstmt.executeUpdate();

            if (rowsUpdated > 0) {
                out.println("<script>alert('Project data updated successfully!'); window.location.href='index.jsp';</script>");
            } else {        
                out.println("<script>alert('Failed to update project data!'); window.location.href='index.jsp';</script>");
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
