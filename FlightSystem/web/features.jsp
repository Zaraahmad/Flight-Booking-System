<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Features</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css">
    <link rel="stylesheet" type="text/css" href="StyleSheet3.css">

    <script type="text/javascript">

            function Redirect() {
               window.location="setprice.jsp";
            }
            
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
    <br /><br />
    <h4>MANAGE FEATURES | ADMIN</h4>
    <br /><br />
    <div id="page-container">

        <div id="col-1">
            <h3><a href=""> First Class </a> </h3>

            <p><input type="checkbox" name="ffeatures" checked>Cabin Rooms</p>
            <p><input type="checkbox" name="ffeatures">Spa</p>
            <p><input type="checkbox" name="ffeatures">Bar</p>
            <p><input type="checkbox" name="ffeatures">Snacks lounge</p>
            <p><input type="checkbox" name="ffeatures">Access to all the lounges at the airport</p>
            <p><input type="checkbox" name="ffeatures">Steam bath at the destination airport</p>
            <p><input type="checkbox" name="ffeatures">TV Screen</p>
            <p><input type="checkbox" name="ffeatures">Headphones</p>
            <br /><br />
            <center><button type="submit" class="btn1">Add First class features</button></center>

        </div>

        <div id="col-2">
            <h3><a href="">Business Class</a></h3>
            <p><input type="checkbox" name="bfeatures" checked>Flat Bed Seats</p>
            <p><input type="checkbox" name="bfeatures">Massager</p>
            <p><input type="checkbox" name="bfeatures">Snacks lounge</p>
            <p><input type="checkbox" name="bfeatures">Access to the Business lounge</p>
            <p><input type="checkbox" name="bfeatures">Steam bath at the destination airport</p>
            <p><input type="checkbox" name="bfeatures">TV Screen</p>
            <p><input type="checkbox" name="bfeatures">Headphones</p>

            <br /><br /><br /><br />
            <center><button type="submit" class="btn1">Add Business class features</button></center>
        </div>

        <div id="col-3">
            <h3><a href="">Economy Class</a></h3>
            <p><input type="checkbox" name="efeatures">TV Screen</p>
            <p><input type="checkbox" name="efeatures">Earphones</p>
            <p><input type="checkbox" name="efeatures">One Snack</p>

            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <center><button type="submit" class="btn1">Add Economy class features</button></center>
        </div>
        <div class="clear"></div>
        <br /><br /><br /><br />
        
        <center><h3><a href="">Set Ticketing Price</a></h3></center>

    <div class="form-box">
        <center><p>Ticket Cost <br /><input type="text" class="box" id="price" placeholder="Enter Price"></p></center>
    </div>
    <br />
    <center><p><strong> The updated ticket cost is: </strong></p></center>

    <br />

    <br />
    
        <center><input type="button" value="Update price" onclick="Redirect();" class="btn1"></center>
        <br /><br />
        <center><input type="button" value="Logout" onclick="Redirect1();" class="btn1"></center>
    </div>
   

</body>
</html>