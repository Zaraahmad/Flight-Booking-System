<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Book a Flight</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css">

        <%-- <script type="text/javascript">

            function Redirect() {
               window.location="itinerary.jsp";
            }
</script> --%>

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
    <center><h3><a href="">Make a Booking!</a></h3></center>

    <div class="login-padding2">
        <div>
            <form method = "Post" action="BookingServ">
                <br><br>

              
                <div class="form-box">
                    <p>Customer ID <br /><input type="text" class="box" name="cid" placeholder="Enter your Email ID"></p>
                </div>

                <div class="form-box">
                    <p>From<br> <input type="text" class="box" name="oc" placeholder="Enter origin city"></p>
                </div>

                <div class="form-box">
                    <p>To<br> <input type="text" class="box" name="dc" placeholder="Enter destinition city"></p>
                </div>

                <div class="form-box">
                    <p>Departure Date <br><input type="date" class="box" name="dd"></p>
                </div>

                <div class="form-box">
                    <p>Arrival Date <br><input type="date" class="box" name="ad"></p>
                </div>

                <div class="form-box">
                    <p>Number of People<br /><input type="text" class="box" name="pt" placeholder="Enter passengers"></p>
                </div>

                <div class="form-box">
                    <p>Phone Number <br /><input type="text" class="box" name="phno" placeholder="Cell Number"></p>
                </div>

                <br />
                
                <center><button type="submit" class="btn1">Proceed</button></center>
                <br />

            </form>
        </div>
    </div>

</body>
</html>