<%@ page import="com.codegnan.app.javawebapp10.service.UserService" %>
<%@ page import="com.codegnan.app.javawebapp10.service.UserServiceImpl" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete User Status</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="deleteResult.css">
</head>
<body>

<%
    int userId = Integer.parseInt(request.getParameter("userid"));

    UserService userService = new UserServiceImpl();
    boolean isUserDeleted = userService.deleteByUserId(userId);
%>

<div class="container">

<%
    if(isUserDeleted){
%>

    <div class="card success">

        <div class="icon">&#10003;</div>

        <h1>User Deleted</h1>

        <p>
            The user account has been successfully removed from the system.
        </p>

        <div class="buttons">

            <a href="usersList.jsp" class="btn primary">
                View Users
            </a>

            <a href="index.html" class="btn secondary">
                Home
            </a>

        </div>

    </div>

<%
    }else{
%>

    <div class="card error">

        <div class="icon">✕</div>

        <h1>Deletion Failed</h1>

        <p>
            Invalid User ID or the user could not be deleted.
            Please try again.
        </p>

        <div class="buttons">

            <a href="deleteUserForm.html" class="btn danger">
                Try Again
            </a>

            <a href="index.html" class="btn secondary">
                Home
            </a>

        </div>

    </div>

<%
    }
%>

</div>

</body>
</html>