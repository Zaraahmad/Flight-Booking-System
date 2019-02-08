<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Manager</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css">
<script type="text/javascript">
            
            function Redirect1() {
               window.location="index.jsp";
            }
    </script>
</head>
<body>
    
    <% 
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    %>
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
    <br />
    <center><h3><a href="">Manager's Approval</a></h3></center>
    <br /><br />
    <center><p><strong> Total seats available in the plane are: 40</strong></p></center>

    <br />
    <center><button type="submit" class="btn1">Approve</button></center>
    <center><button type="submit" class="btn1">Reject</button></center>
    <br /><br />

    <center><p><strong> Price for each seat is: RS: 57000</strong></p></center>

    <br />
    <center><button type="submit" class="btn1">Approve</button></center>
    <center><button type="submit" class="btn1">Reject</button></center>
    <br />
<center><input type="button" value="Logout" onclick="Redirect1();" class="btn1"></center>
</body>
</html>