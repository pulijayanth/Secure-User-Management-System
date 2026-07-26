# User Management System

A Java Web Application developed using **JSP, JDBC, MySQL, DAO, DTO, and Service Layer Architecture**. The application provides secure user management with authentication and complete CRUD operations.

---

## Features

- User Registration
- User Login Authentication
- View All Registered Users
- Update User Password (Forgot Password)
- Delete User
- Layered Architecture (DAO, DTO, Service)
- MySQL Database Integration
- Responsive and Modern User Interface

---

## Tech Stack

### Frontend
- HTML5
- CSS3
- JSP

### Backend
- Java
- JDBC
- JSP

### Database
- MySQL

### Architecture
- DAO (Data Access Object)
- DTO (Data Transfer Object)
- Service Layer
- Entity Classes

### Server
- Apache Tomcat

### IDE
- IntelliJ IDEA / Eclipse

---

## Project Structure

```
src
│
├── dao
│   ├── UserDao.java
│   ├── UserDaoImpl.java
│   └── DatabaseUtility.java
│
├── dto
│   ├── UserDto.java
│   └── CredentialsDto.java
│
├── entity
│   ├── User.java
│   └── Credentials.java
│
├── service
│   ├── UserService.java
│   └── UserServiceImpl.java
│
└── webapp
    ├── index.html
    ├── userSignUpForm.html
    ├── userSignInForm.html
    ├── forgotPasswordForm.html
    ├── deleteUserForm.html
    ├── signUp.jsp
    ├── signIn.jsp
    ├── usersList.jsp
    ├── updateNewPassword.jsp
    └── deleteUser.jsp
```

---

## Database Schema

### Users Table

| Column | Type |
|---------|------|
| user_id | INT |
| first_name | CHAR(10) |
| last_name | CHAR(10) |
| credentials_id | INT |

### Credentials Table

| Column | Type |
|---------|------|
| credentials_id | INT |
| username | CHAR(10) |
| login_password | CHAR(10) |

---

## Functionalities

### User Registration
- Register a new user
- Stores user credentials securely in MySQL

### User Login
- Validates username and password
- Displays successful login message

### View Users
- Displays all registered users
- Fetches records from the database

### Forgot Password
- Updates user password using username

### Delete User
- Deletes user records from the database

---

## Architecture


HTML Form
      │
      ▼
JSP
      │
      ▼
Service Layer
      │
      ▼
DAO Layer
      │
      ▼
MySQL Database


---

## 📸 Application Screenshots

| Home | Registration |
|------|--------------|
| <img width="1917" height="1027" alt="Screenshot 2026-07-26 153415" src="https://github.com/user-attachments/assets/1034aa57-5816-4199-a4cd-71d929573283" /> | <img width="1915" height="1031" alt="Screenshot 2026-07-26 153536" src="https://github.com/user-attachments/assets/8993a696-9aed-4081-b494-2db2b56b9f6e" />|

| Login | Users List |
|------|------------|
| <img width="1910" height="1027" alt="Screenshot 2026-07-26 153601" src="https://github.com/user-attachments/assets/13067105-bfe1-423d-86bb-92b2385b1d37" /> | <img width="1917" height="600" alt="Screenshot 2026-07-26 154014" src="https://github.com/user-attachments/assets/c6392138-292d-47ea-923e-58257c2cf21e" />|

| Update Password | Delete User |
|-----------------|-------------|
| <img width="1915" height="1027" alt="Screenshot 2026-07-26 153647" src="https://github.com/user-attachments/assets/653e448f-a74d-45f5-9013-63554e06e53d" /> | <img width="1913" height="1031" alt="Screenshot 2026-07-26 153718" src="https://github.com/user-attachments/assets/054f98d8-69e1-4bd9-87b8-a5deca3ad182" />|

## How to Run

1. Clone the repository

```bash
git clone https://github.com/your-username/User_Management_System.git
```

2. Import the project into IntelliJ IDEA or Eclipse.

3. Create the MySQL database.

4. Execute the SQL scripts to create the required tables.

5. Update the database credentials in:

```
DatabaseUtility.java
```

6. Deploy the project on Apache Tomcat.

7. Open the application in your browser.

---

## Future Enhancements

- Password Encryption (BCrypt)
- Session Management
- User Roles (Admin/User)
- Profile Update
- Search Users
- Pagination
- Validation
- Exception Handling
- Logging

---

## Author

**Jayanth Puli**

GitHub: https://github.com/pulijayanth

LinkedIn: https://www.linkedin.com/in/jayanth-puli-6161ba273/

---

## License

This project is developed for learning and educational purposes.
