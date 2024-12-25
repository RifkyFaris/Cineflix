<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Details</title>
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
table{
background-color:white;
color:black;
width:900px;
border:none;
margin-left:20px;
margin-top:20px;
}
.submit{
width:120px;
color:white;
background-color:#141414;
cursor:pointer;
margin:5px;

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
<table border="1">
<tr>
<th>ID</th>
<th>Name</th>
<th>Content</th>
<th>Category</th>
<th>Revenue Model</th>
<th>Content provider ID</th>
<th>Action</th>

</tr>
<c:forEach var="movie" items="${allmovie}">
<tr>
<td>${movie.id}</td>
<td>${movie.name}</td>
<td>${movie.content}</td>
<td>${movie.category}</td>
<td>${movie.revenueModel}</td>
<td>${movie.contentProviderID}</td>
<td>
<a href="UpdateMovie.jsp?id=${movie.id}&name=${movie.name}&price=${movie.content}&category=${movie.category}&quantity=${movie.revenueModel}&description=${movie.contentProviderID}">
<button class="submit">Update</button>
</a>
<form action="DeleteMovieServlet" method="post">
<input type="hidden" name="id" value="${movie.id}">
<button class="submit">Delete</button>
</form>
</td>

</tr>
</c:forEach>
</table>
</body>
</html>