<!DOCTYPE html>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.*" %>



<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <title>Travel Itinerary</title>
        <link rel="stylesheet" type="text/css" href="home.css">
            <link rel="stylesheet" type="text/css" href="StyleSheet2.css">

                <script type="text/javascript">

                    function Redirect() {
                        window.location = "payment.jsp";
                    }


                </script>

                <%!
                    public static ResultSet func(Connection dbc) {
                        ResultSet rs = null;
                        String sql;
                        PreparedStatement ps;
                        try {
                            sql = "select top (1) * from booking order by BID desc";
                            ps = dbc.prepareStatement(sql);
                            rs = ps.executeQuery();
                        } catch (Exception e) {
                            e.printStackTrace();
                            String sqlMessage = e.getMessage();
                        }
                        return rs;
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

                    <center><p><strong> Flight Details for the booking you made are as below:</strong></p></center>

                    <br /> 

                    <table align="center" cellpadding="5" cellspacing="5" border="1">
                        <tr>

                        </tr>
                        <tr bgcolor="#A52A2A">
                            <td><b>BID</b></td>
                            <td><b>EmailID</b></td>
                            <td><b>Origin_City</b></td>
                            <td><b>Destination_City</b></td>
                            <td><b>Departure_Date</b></td>
                            <td><b>Arrival_Date</b></td>
                            <td><b>Passengers</b></td>
                            <td><b>Phone_Number</b></td>

                        </tr>

                        <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb", "root", "");

                                //ResultSet rs = func(con);
                                //String sql = "SELECT * FROM record";
                                
                                String sql = "select * from booking order by BID desc";
                                PreparedStatement ps = con.prepareStatement(sql);
                                ResultSet rs = ps.executeQuery();

                                //ResultSet rs = statement.executeQuery(sql);
                                while (rs.next()) {
                        %>

                        <tr bgcolor="#DEB887">

                            <td><%=rs.getString("BID")%></td>
                            <td><%=rs.getString("EmailID")%></td>
                            <td><%=rs.getString("OriginCity")%></td>
                            <td><%=rs.getString("DestinationCity")%></td>
                            <td><%=rs.getString("DepartureDate")%></td>
                            <td><%=rs.getString("ArrivalDate")%></td>
                            <td><%=rs.getString("Passengers")%></td>
                            <td><%=rs.getString("PhoneNumber")%></td>
                            
                        </tr>
                            <%=rs.getString("toGetCorrAns")%>
                        <%
                                }

                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </table>


                    <br />
                    <center><input type="button" value="Confirm Booking" onclick="Redirect();" class="btn1"></center>
                    <br />

                </body>
                </html>