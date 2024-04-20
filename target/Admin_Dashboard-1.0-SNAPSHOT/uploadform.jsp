<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*, java.util.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

<html>
<head>
    <title>Upload Form</title>
</head>
<body>
    <form action="uploadHandler.jsp" method="post" enctype="multipart/form-data">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name"><br><br>
        <label for="email">Email:</label>
        <input type="text" id="email" name="email"><br><br>
        <label for="image">Upload Image:</label>
        <input type="file" id="image" name="image"><br><br>
        <label for="pdf">Upload PDF:</label>
        <input type="file" id="pdf" name="pdf"><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
