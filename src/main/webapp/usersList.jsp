<%@ page import="com.codegnan.app.javawebapp10.dto.UserDto" %>
<%@ page import="com.codegnan.app.javawebapp10.service.UserService" %>
<%@ page import="com.codegnan.app.javawebapp10.service.UserServiceImpl" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users List</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="usersList.css">
</head>

<body>
<%
    UserService userService = new UserServiceImpl();
    List<UserDto> users = userService.getAllUsers();
%>

<div class="container">

    <div class="header">

        <h1>Users List</h1>

        <a href="index.html" class="home-btn">
            <i class="fa-solid fa-arrow-left"></i>
            Back to Home
        </a>
    </div>

    <div class="table-container">

        <table>

            <thead>

            <tr>
                <th>User ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Username</th>
                <th>Password</th>
            </tr>

            </thead>

            <tbody>

            <%
                for(UserDto user : users){
            %>

            <tr>

                <td><%= user.getUserId() %></td>

                <td><%= user.getFirstName() %></td>

                <td><%= user.getLastName() %></td>

                <td><%= user.getUsername() %></td>

                <td><%= user.getLoginPassword() %></td>

            </tr>

            <%
                }
            %>

            </tbody>

        </table>

    </div>

</div>

</body>
</html>