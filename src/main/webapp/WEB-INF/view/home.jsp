<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>YummyAnime</title>
    <link rel="shortcut icon" href="<c:url value = "/resources/favicon.ico"/>" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,900;1,100;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value = "/resources/styleHome.css"/>">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">
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

                <div class="mainblock-container">
                    <h1 class="block1">Welcome to YummyAnime!</h1>
                    <figure class="poster">
                        <img src="<c:url value = "/resources/poster.jpg"/>" alt="poster" width="240" height="334">
                        <figcaption>
                            Re:Life poster as an example
                        </figcaption>
                    </figure>
                    <p>For many years, Japanese animation has enjoyed great success all over the world, including Kazakhstan. They love these tapes for their bright plot, original drawing and constant intensity of emotions.</p>

                    <p>Many fans love to watch anime online, but for this they often have to use several sources, since none of them can be called universal. But we have great news for anime lovers! We have launched a new YummyAnime project dedicated to watching
                        anime online. Now you don't have to surf the Internet in search of your favorite title - all the best anime in good quality are already on our portal. We ourselves are very fond of this genre and therefore have tried to make our site as
                        convenient and exciting as possible. The site is constantly evolving and updated with new and old anime series, feature films and OVAs.</p>

                    <p>If you have any problems watching videos; if you have not found the anime you want on our website; if any video was seized - write to those support.
                        We are glad to see you on our portal - there is something to do for both experienced fans of the anime universe and newcomers who have recently become acquainted with this world!</p>
                    <p>And already right now you can check out any anime that we currently have <i class="fas fa-arrow-right"></i> <a href="./watch"
                                                                                                                                      class="btn btn-info">Watch Anime!</a></p>
                    <div class="box">
                        And we have to mention some points:
                        <ol>
                            <li>The site is a voluntary community that people of any nationality and religious beliefs can join.</li>
                            <li>The activity of the site is based on the initiative of the administrators.</li>
                            <li>The site is created and functions within the limits and on the terms of the administrators.</li>
                            <li>Absolutely everyone has full access to all sections of the site.</li>
                        </ol>
                    </div>
                    <p>We have several full-length anime films and soon their collection will be replenished with excellent anime for every taste.
                        18+ materials may be present.</p>
                    <p class="links">If you want to watch more anime titles you can visit another anime websites as well!</p>
                    <div class="linksul">
                        <ul>
                            <li> <a href="https://jut.su/" target="_blank" style="color:purple"> <img src="<c:url value = "/resources/jutsu.png"/>" alt="jutsu" height="25" width="25"> Jutsu</a></li>
                            <br>
                            <li> <a href="https://naruto-base.su/" target="_blank" style="color:purple"><img src="<c:url value = "/resources/naruto.ico"/>" alt="narutobase" height="25" width="25"> NarutoBase</a></li>
                            <br>
                            <li> <a href="https://yummyanime.club/" target="_blank" style="color:purple"><img src="<c:url value = "/resources/favicon.ico"/>" alt="yummyanime" height="25" width="25">YummyAnime</a>(Use vpn to open this site)</li>
                        </ul>
                    </div>
                    <p class="miniblock">Our team also recommends to watch these titles!</p>
                    <div class="row">
                        <div class="col" style="padding:20px;">
                            <img src="<c:url value = "/resources/newposter1.jpg"/>" alt="poster1" width="200" height="300">
                            <figcaption style="padding:10px">Jujutsu Kaisen</figcaption>
                        </div>
                        <div class="col" style="padding:20px;">
                            <img src="<c:url value = "/resources/newposter2.jpg"/>" alt="poster2" width="200" height="300">
                            <figcaption style="padding:10px">Attack on Titan</figcaption>
                        </div>
                        <div class="col" style="padding:20px;">
                            <img src="<c:url value = "/resources/newposter3.jpg"/>" alt="poster3" width="200" height="300">
                            <figcaption style="padding:10px">Promised Neverlend</figcaption>
                        </div>
                    </div>
                </div>
                <div class="lastblock bg-dark" style="color:gray">
                    <p class="textblock">All videos on the site are provided for information only and do not involve downloading.</p>
                    <p class="textblock">Technical support and assistance to users: <span style="color:lightblue"> all.yummy.anime@gmail.com</span>
                        Do not write to the site's mail through VK, answers to VK do not reach!</p>
                    <p class="textblock">This site is protected by reCAPTCHA and the <a href="https://policies.google.com/privacy" target="_blank"> Google Privacy Policy</a> and <a href="https://policies.google.com/terms" target="_blank"> Terms of Service apply</a>.
                    </p>
                </div>
                </body>

                </html>
