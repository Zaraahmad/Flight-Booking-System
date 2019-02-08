?<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Payment</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css">
        
        <script type="text/javascript">

                    function Redirect() {
                        window.location = "index.jsp";
                    }


                </script>
        
        <%!
            public static String ticketPrice() {
                PreparedStatement ps = null;
                ResultSet rs = null;
                int passengers=0;
                String query = "SELECT Passengers From booking WHERE BID = (SELECT MAX(BID) From booking)";

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb", "root", "");
                    ps = con.prepareStatement(query);
                    rs = ps.executeQuery();
                    String p = "0";
                    while (rs.next()) {
                        p = rs.getString("Passengers");
                    }
                    return p;

                } catch (Exception e) {
                    e.printStackTrace();
                    return "0";
                }
            }
        %>

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
    <br />
    <center><h3><a href="">Travel Itinerary</a></h3></center>

    <center><p><strong> Your total ticketing cost is: </strong></p></center>

    <br />
    <center><p><strong><% String p = ticketPrice();
     int seats = Integer.parseInt(p);
        int fprice= 10000*seats;
        out.print(fprice);
    %></strong></p></center>
    
    
    
    <br />
    <center><input type="button" class="btn1" value="Make Payment" onclick="Redirect();"</center>

    <br />

</body>
</html>