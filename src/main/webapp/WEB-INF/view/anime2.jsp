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
    <h1 class="block1">Let Me Eat Your Pancreas</h1>
    <figure class="poster">
        <img src="<c:url value = "/resources/poster3.jpg"/>" alt="poster" width="230" height="330">
        <figcaption>

        </figcaption>
    </figure>
    <p>Year: 2018</p>
    <p>Year: 2018</p>
    <p>Season: Autumn</p>
    <p>Age rating: PG-13 (from 13 years old)</p>
    <p>Genre: Drama</p>
    <p>Original Source: Novella</p>
    <p>Studio: Studio VOLN</p>
    <p>Producer: Ushijima Shinichiro</p>
    <p>Type: Feature Film</p>
    <p>Voice acting: Polyphonic</p>

    <p>One fine day, a high school student finds someone's personal diary, signed as the "Diary of Sickness." It soon turns out that this diary belongs to Sakura Yamauchi, a classmate of the protagonist. After reading it, Haruki Shiga learns that the
        girl is suffering from a fatal disease - her pancreas has stopped working. To support her in this difficult situation, the young man decides to make friends with Sakura, despite their completely different characters.</p>
    <div class="movie">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/sZJmQnKVAbM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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

