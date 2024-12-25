<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movie</title>
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
form{
max-width:400px;
margin-left:auto;
margin-right:auto;
text-align:center;
background-color:#023;
margin-top:100px;
padding-bottom:20px;
border-radius:20px;
}
.box{
width:200px;
height:30px;
}
.radio{
margin-left:35px;
}
.submit{
width:100px;
color:white;
background-color:#141414;
cursor:pointer;

}
.submit:hover{
color:#141414;
background-color:white;
}
</style>
</head>
<body>

<header>
        <div class="logo">CineFlix</div>
        <nav>
            <ul>
                <li><a href="ContentProviderDashboard.jsp">Home</a></li>
                <li><a href="#">Add Movies</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="indexrifky.jsp">Log Out</a></li>
            </ul>
        </nav>
    </header>
    
    <form method="post" action="InsertMovieServlet" enctype="multipart/form-data">
    <br><br>
    <label for="movieName">Enter content name:  </label><br>
    <input class="box" type="text" name="movieName" id="movieName" required><br><br>
    <label for="content">Upload Content:  </label><br>
    <input class="box" type="file" name="content" id="content" required><br><br>
    <label>Select category:  </label><br>
    <label for="movie">Movie</label>
    <input type="radio" name="category" id="movie" value="movie" required>
    <label class="radio" for="tvseries">TV Series</label>
    <input  type="radio" id="tvseries" name="category" value="tvseries" required><br><br>
    <label>Select revenue model:  </label><br>
    <label for="PayPerview">Pay Per view</label><input type="radio" id="PayPerview" name="revenue" value="PayPerview" required>
    <label for="Paypersubscription" class="radio">Pay per subscription</label><input id="Paypersubscription" type="radio" name="revenue" value="Paypersubscription" required><br><br>
    <input class="submit" type="submit" value="Submit">
    
    
    </form>
    
</body>
</html>