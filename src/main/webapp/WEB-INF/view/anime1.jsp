<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Shape of voice</title>
    <link rel="shortcut icon" href="<c:url value = "/resources/favicon.ico"/>" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,900;1,100;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value = "/resources/styleanime1.css"/>">
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
<div class="mainblock">
    <h1 class="block1">Shape of voice</h1>
    <figure class="poster">
        <img src="<c:url value = "/resources/poster2.jpg"/>" alt="poster" width="230" height="330">
        <figcaption>

        </figcaption>
    </figure>
    <p>Year: 2016</p>
    <p>Season: Summer</p>
    <p>Age rating: PG-13 (from 13 years old)</p>
    <p>Genre: Drama, Daily life, School life</p>
    <p>Original Source: Manga</p>
    <p>Studio: Studio Kyoto animation</p>
    <p>Producer: Yamada Naoko</p>
    <p>Type: Feature Film</p>
    <p>Voice acting: Polyphonic</p>

    <p>The story of the difficult lives of two teenagers. The heroine has hearing problems, which is why she annoyed her classmates in a regular school. Irritation turned into bullying. The hero was one of the instigators of the bullying. But even
        though everyone was to blame, when it came time to blame someone, only he became the generally recognized villain. And a new target of bullying. Years passed, and the guy had only one desire: to ask for forgiveness ...</p>
    <div class="movie">
        <video controls="controls" poster="<c:url value = "/resources/animeposter1.jfif"/>">
            <source src="anime1.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"'>
        </video>
    </div>
</div>
<div class="lastblock bg-dark" style="color:gray">
    <p class="textblock">All videos on the site are provided for information only and do not involve downloading.</p>
    <p class="textblock">Technical support and assistance to users: <span style="color:lightblue"> all.yummy.anime@gmail.com</span>
        Do not write to the site's mail through VK, answers to VK do not reach!</p>
    <p class="textblock">This site is protected by reCAPTCHA and the <a href="https://policies.google.com/privacy" target="_blank"> Google Privacy Policy</a> and <a href="https://policies.google.com/terms" target="_blank"> Terms of Service apply</a>.</p>
</div>
</body>

</html>

