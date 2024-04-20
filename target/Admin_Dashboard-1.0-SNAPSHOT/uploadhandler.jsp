<%@page import="java.util.List"%>
<%@ page import="java.sql.*, java.io.*, org.apache.commons.fileupload.*, org.apache.commons.fileupload.disk.*, org.apache.commons.fileupload.servlet.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    // Handle file uploads using Apache Commons FileUpload
    DiskFileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);

    try {
        List<FileItem> items = upload.parseRequest(request);
        for (FileItem item : items) {
            if (!item.isFormField()) {
                String fieldName = item.getFieldName();
                String fileName = new File(item.getName()).getName();
                InputStream fileContent = item.getInputStream();

                // Save the uploaded file to a directory or process it as needed
                // For simplicity, let's assume you save the image and PDF to a folder

                // Example code to save the file
                // File uploadedImage = new File("/path/to/uploaded/image/" + fileName);
                // item.write(uploadedImage);

                // Insert the data into the database
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "username", "password");
                PreparedStatement pstmt = con.prepareStatement("INSERT INTO your_table (name, email, image_path, pdf_path) VALUES (?, ?, ?, ?)");
                pstmt.setString(1, name);
                pstmt.setString(2, email);
                pstmt.setString(3, "/path/to/uploaded/image/" + fileName); // Example path
                pstmt.setString(4, "/path/to/uploaded/pdf/" + fileName); // Example path
                pstmt.executeUpdate();
                con.close();
            }
        }
        out.println("Data inserted successfully!");
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
