<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
.movie{
margin-top:50px;
margin-left:250px
}
</style>
<meta charset="UTF-8">
<title>Movie Display</title>
</head>
<body>

<header>
        <div class="logo">CineFlix</div>
        <nav>
            <ul>
                <li><a href="UserDashboard.jsp">Home</a></li>
                <li><a href="getAllTVSeriesfromCategory">TVSeries</a></li>
                <li><a href="#">Subscription</a></li>
                <li><a href="#">About Us</a></li>
            </ul>
        </nav>
    </header>
<%
String vidFileName=(String)request.getAttribute("img");
String vidId=(String)request.getAttribute("id");
System.out.println(vidFileName);
%>
<table class="movie">
<%
if (vidFileName != null && !vidFileName.isEmpty() && vidId != null) {
%>
<tr>
    <td >
 <video width="900px" controls>
<source src="upload/<%=vidFileName%>" type="video/mp4">
<source src="movie.ogg" type="video/ogg">


</video></td>
</tr>
<%
} else if (vidId != null) {
%>
<tr>
    <td colspan="2">No video found for the given ID.</td>
</tr>
<%
}
%>
</table>
</body>
</html>
