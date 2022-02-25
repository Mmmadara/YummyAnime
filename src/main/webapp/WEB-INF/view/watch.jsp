<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Watch Anime</title>
    <link rel="shortcut icon" href="<c:url value = "/resources/favicon.ico"/>" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,900;1,100;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value = "/resources/styleWatch.css"/>">
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
                <li class="nav-item"> <a class="nav-link" href="<c:url value="/logout" />">Logout</a></li>
            </sec:authorize>
        </ul>
    </div>
</nav>
<div class="block1">
    <div class="animeblock">
        <span class="miniblock1"><img src="<c:url value = "/resources/poster2.jpg"/>" alt="poster" width="250" height="350"></span>
        <span class="miniblock2"><img src="<c:url value = "/resources/poster3.jpg"/>" alt="poster" width="250" height="350"></span>
    </div>
    <div class="textblock0">
        <span class="miniblock3"><a href="./anime1" class="btn btn-info">Shape of voice</a></span>
        <span class="miniblock4"><a href="./anime2" class="btn btn-info">Let Me Eat Your Pancreas</a></span>
    </div>
    <p class="minitext">Currently we have only 2 anime movies, but we will definitely add more in near future. You can advice something in feedback page!</p>
</div>
<div class="lastblock bg-dark" style="color:gray">
    <p class="textblock">All videos on the site are provided for information only and do not involve downloading.</p>
    <p class="textblock">Technical support and assistance to users: <span style="color:lightblue"> all.yummy.anime@gmail.com</span>
        Do not write to the site's mail through VK, answers to VK do not reach!</p>
    <p class="textblock">This site is protected by reCAPTCHA and the <a href="https://policies.google.com/privacy" target="_blank"> Google Privacy Policy</a> and <a href="https://policies.google.com/terms" target="_blank"> Terms of Service apply</a>.</p>
</div>
</body>

</html>
