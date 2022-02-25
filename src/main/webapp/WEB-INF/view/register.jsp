<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
  <html lang="en" dir="ltr">

  <head>
    <meta charset="utf-8">
    <title>Register</title>
    <link rel="shortcut icon" href="<c:url value = "/resources/favicon.ico"/>" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,900;1,100;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value = "/resources/style0.css"/>">
  </head>

  <body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <img src="<c:url value = "/resources/favicon.ico"/>" alt="photo" height="40" width="40">
      <h2 class="navbar-brand">YummyAnime</h2>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"> <a class="nav-link" href="./">Home</a></li>
          <li class="nav-item"> <a class="nav-link" href="./watch">Watch anime</a></li>
          <sec:authorize access="!isAuthenticated()">
            <li class="nav-item"> <a class="nav-link" href="./login">Login</a> </li>
            <li class="nav-item"> <a class="nav-link" href="./register">Register</a> </li>
          </sec:authorize>

          <sec:authorize access="isAuthenticated()">
            <li class="nav-item"> <a class="nav-link" href="./updateId">Update</a> </li>
            <li class="nav-item"> <a class="nav-link" href="./delete">Delete</a> </li>
            <li class="nav-item"> <a class="nav-link" href="./checkRead">Check</a> </li>
          </sec:authorize>
        </ul>
      </div>
    </nav>
    <div class="block1">

      <%--<form action="/create" modelAttribute = "user" target="_parent" method="post" enctype="text/plain" style="text-align: center">
        <label for="">Your email:</label><br>
        <input type="text" name="name" value=""><br><br>
        <label for="">Your password:</label><br>
        <input type="text" name="password" value=""><br><br>
        <label for="">Your nickname:</label><br>
        <input type="text" name="nickname"><br><br>
        <input type="submit" value="Send">
      </form>--%>
        <div class="checkme">
<form:form action="./register" modelAttribute="user" method="post" style="text-align: center">
  <form:input path="username" placeholder="Your email" class="form-control"/>
  <br><br>
  <form:input path="password" placeholder="Your password" class="form-control"/><br>
  <input type="submit" value="Register">
</form:form></div>

        <br><br>
      <div class="center text-center">If you already registered on our site then login   <i class="fas fa-arrow-right"></i>    <a href="./login" class="btn btn-info">Login</a></div>

    </div>

    <div class="mainblock">
      <div class="lastblock bg-dark" style="color:gray">
        <h6 class=feedback>Contact us for sure!</h6>
      </div>
      <div class="lastblock bg-dark" style="color:gray">
        <h6 class=feedback>+7752819559</h6>
      </div>
      <div class="lastblock bg-dark" style="color:gray">
        <h6 class=feedback>umarovdias2002@gmail.com</h6>
      </div>
      <div class="lastblock bg-dark" style="color:gray">
        <p class="textblock"> <a href="https://www.instagram.com/mmmadara_/?hl=ru" target="_blank"> <img src="<c:url value = "/resources/inst.png"/>" alt="instagram" height="50" width="50"> </a>
          <a href="https://vk.com/mmmmadara" target="_blank"> <img src="<c:url value = "/resources/vk.png"/>" alt="vk" height="50" width="50"> </a>
        </p>
      </div>
    </div>
  </body>

  </html>
