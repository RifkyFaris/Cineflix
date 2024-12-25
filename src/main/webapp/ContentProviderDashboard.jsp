<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Content Provider Dashboard</title>
<style>
* {
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background-color: #141414;
    color: white;
}
header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px;
    background-color: #023;
}

.logo {
    font-size: 24px;
    font-weight: bold;
}

nav ul {
    display: flex;
    list-style-type: none;
}

nav ul li {
    margin-left: 20px;
}

nav ul li a {
    color: white;
    text-decoration: none;
}
.Addmoviebtn{
width:250px;
font-size:30px;
height:50px;
border-radius:5px;
margin-top:50px;
}
.Addmoviebtn:hover{
color:red;
cursor:pointer;
}
</style>
</head>
<body>
<header>
        <div class="logo">CineFlix</div>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="AddMovie.jsp">Add Movies</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="indexrifky.jsp">Log Out</a></li>
            </ul>
        </nav>
    </header>
    <center><br><br>
    <h1>Dashboard</h1>
    <a href="AddMovie.jsp"><button class="Addmoviebtn">Add Movie</button></a>
    <a href="GetAllDetails"><button class="Addmoviebtn">View Movie</button></a>
    </center>
    
</body>
</html>