<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Home Page</title>
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
      .hero {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 90vh;
        background: url("images/p.jpg");
        background-repeat: no-repeat;
        background-size: cover;
        text-align: center;
        max-height: 100%;
      }
      .hero h1 {
        font-size: 45px;
      }
      .hero p {
        font-size: 27px;
      }
      .hero button {
        padding: 10px 20px;
        font-size: 16px;
        background-color: red;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
      }
      nav ul li a:hover {
        color: red;
      }
      .hero button:hover {
        color: black;
      }

      .container1 {
        background-color: black;
        display: flex;
      }
      .container1_left p {
        font-size: 20px;
        color: grey;
      }
      .container1_left h1 {
        margin-top: -20px;
        color: white;
      }
      .container1_Right {
        display: flex;
        padding-left: 900px;
        padding-top: 20px;
      }
      .container1_Right button {
        width: 100px;
        height: 50px;
        border-radius: 30px;
        border: none;
        margin: 10px;
        border: 4px solid #bf1011;
      }
      .container {
        display: flex;
      }
      .container1 {
        width: 400px;
        padding: 30px;
        display: block;
      }
      .container1 img {
        width: 250px;
      }
      .container1 img:hover {
        border: 1px solid red;
      }

      .hero1 {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 40vh;
        background: url("");
        background-repeat: no-repeat;
        background-size: cover;
        text-align: center;
        max-height: 100%;
      }
      .hero1 h1 {
        font-size: 45px;
      }
      .hero1 p {
        font-size: 27px;
      }
      .hero1 button {
        padding: 10px 20px;
        font-size: 16px;
        background-color: red;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
      }
      .hero1 button:hover {
        color: black;
      }
    </style>
  </head>
  <body>
    <header>
      <div class="logo">CineFlix</div>
      <nav>
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Movies</a></li>
          <li><a href="#">Subscription</a></li>
          <li><a href="#">About Us</a></li>
        </ul>
      </nav>
    </header>
    <section class="hero">
      <h1>Watch Your Favorite Movies</h1>
      <p>Unlimited movies, TV shows, and more.</p>
      <br />
      <button>Get Started</button>
    </section>
    <section>
      <br /><br />
      <center>
        <h1>Now Playing</h1>
        <br />
        <div class="container">
          <div class="container1">
            <img src="images/movie-1.png" /><br />
            <h3>Sonic</h3>
          </div>
          <div class="container1">
            <img src="images/movie-2.png" />
            <h3>Morbius</h3>
          </div>
          <div class="container1">
            <img src="images/movie-3.png" />
            <h3>The Adam Project</h3>
          </div>
          <div class="container1">
            <img src="images/movie-4.png" />
            <h3>Free Guy</h3>
          </div>
        </div>
      </center>
    </section>
    <section class="hero1">
      <h1>Watch Your Favorite Movies</h1>
      <p>On the go!</p>
      <br />
      <button>Get Started</button>
    </section>

    <section>
      <br /><br />
      <center>
        <h1>Upcoming Movies</h1>
        <br />
        <div class="container">
          <div class="container1">
            <img src="images/series-1.png" /><br />
            <h3>Moon Knight</h3>
          </div>
          <div class="container1">
            <img src="images/series-2.png" />
            <h3>Halo</h3>
          </div>
          <div class="container1">
            <img src="images/series-3.png" />
            <h3>Vikings Valhalla</h3>
          </div>
          <div class="container1">
            <img src="images/series-4.png" />
            <h3>Monet heist</h3>
          </div>
        </div>
      </center>
    </section>

    <header>
      <div class="logo">CineFlix</div>
      <nav>
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Movies</a></li>
          <li><a href="#">Subscription</a></li>
          <li><a href="#">About Us</a></li>
        </ul>
      </nav>
      <br />
      <p>Copyright c 2024</p>
    </header>
  </body>
</html>
