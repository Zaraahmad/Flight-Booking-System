<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8"/>
    <title> Asian Airways </title>
    <link rel="stylesheet" type="text/css" href="home.css">

</head>

<body>
    <div id="container">

        <div id="menu-bar">

            <h1> WELCOME TO ASIAN AIRWAYS! </h1>

        </div>

        <div id="container-2">

            <div id="menu-bar-2">

                <a href="index.jsp"> Home </a>
                <a href="bookflight.jsp"> Book a Flight </a>
                <a href=""> About </a>
                <a href="features.jsp"> Flight Information </a>
                <a href="signin.jsp" id="no-border"> Go to your Account</a>

            </div>

        </div>

    </div>

    <div class="clear"></div>

    <br /><br /><br /><br />
    <div class="slideshow-container">

        <div class="mySlides fade">
            <div class="numbertext">1 / 3</div>
            <img src="first.jpg" style="width:100%" height="400px">
            <div class="text">Enhance your journey with Asian Airways!</div>
        </div>

        <div class="mySlides fade">
            <div class="numbertext">2 / 3</div>
            <img src="firstclass.jpg" style="width:100%" height="400px">
            <div class="text">Enjoy the delicious on flight meals!</div>
        </div>

        <div class="mySlides fade">
            <div class="numbertext">3 / 3</div>
            <img src="business.jpg" style="width:100%" height="400px">
            <div class="text">Have a comfortable journey with us!</div>
        </div>

    </div>
    <br>

    <div style="text-align:center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>

    <script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
    </script>

</body>
</html>