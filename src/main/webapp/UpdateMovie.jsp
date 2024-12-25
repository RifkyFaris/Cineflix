<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
                <li><a href="MovieDetails.jsp">Movies</a></li>
                <li><a href="#">Subscription</a></li>
                <li><a href="#">About Us</a></li>
            </ul>
        </nav>
    </header>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");


%>
 
    <form method="post" action="UpdateMovieServlet" >
    <br><br>
    <label>Enter ID:  </label><br>
    <input class="box" type="text" name="id" value="<%=id%>" readonly><br><br>
    <label>Enter content name:  </label><br>
    <input class="box" type="text" name="movieName" value="<%=name%>" ><br><br>
    
    <input class="submit" type="submit" value="Submit">
    
    
    </form>
</body>
</html>