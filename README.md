# Secure User Management System

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

```
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
```

---

## 📸 Application Screenshots

| Home | Registration |
|------|--------------|
| <img src="https://github.com/user-attachments/assets/84b04a7e-abd9-48ce-9f72-4c2dcf8bd98b" width="450"/> | <img src="https://github.com/user-attachments/assets/8e24b00c-9010-42c5-a88e-22296f6b2170" width="450"/> |

| Login | Users List |
|------|------------|
| <img src="https://github.com/user-attachments/assets/f6c4c4e4-408d-4453-b0a4-6b0664934f52" width="450"/> | <img src="https://github.com/user-attachments/assets/b099404e-95cb-4d84-ae94-63196a8aedc7" width="450"/> |

| Update Password | Delete User |
|-----------------|-------------|
| <img src="https://github.com/user-attachments/assets/03886af9-ee51-43f3-b651-1f13bba9bbf2" width="450"/> | <img src="https://github.com/user-attachments/assets/18ca953b-2ac4-4ac7-8e52-d01deeb8825c" width="450"/> |

---

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
