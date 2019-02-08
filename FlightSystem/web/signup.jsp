<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Sign Up</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css">
</head>
<body>

    <div id="container">

        <div id="menu-bar">

            <h1> WELCOME TO ASIAN AIRWAYS! </h1>

        </div>

        <div id="container-2">

            <div id="menu-bar-2">

                <div id="menu-bar-2">

                    <a href="index.jsp"> Home </a>
                    <a href="bookflight.jsp"> Book a Flight </a>
                    <a href=""> About </a>
                    <a href="features.jsp"> Flight Information </a>
                    <a href="signin.jsp" id="no-border"> Go to your Account</a>

                </div>
            </div>
        </div>

    </div>
        <div class="clear"></div>
        <br />
        <center><h3><a href="">Sign Up</a></h3></center>

    <div class="login-padding2">
        <div>
            <form method = "Post" action = "SignupServ">
                <br><br>

                <div class="form-box">
                    <p>Name <br /> <input name="fname" type="text" class="box-half" placeholder="First" required /> <input name="lname" type="text" class="box-half" placeholder="Last" required /> </p>

                </div>

                <div class="form-box">
                    <p>Email <br /><input type="email" class="box" name="email1" placeholder="Enter email" required></p>
                </div>

                <div class="form-box">
                    <p>Create Password <br> <input type="password" class="box" name="pwd" placeholder="Enter password" required></p>
                </div>

                <div class="form-box">
                    <p>Confirm Password <br><input type="password" class="box" name="pwdc" placeholder="Re-enter password" required></p>
                </div>

                <div class="form-box">
                    <p>
                        Birthday <br>
                        <select name="month" class="box-half" id="height" required>

                            <option>January</option>
                            <option>February</option>
                            <option>March</option>
                            <option>April</option>
                            <option>May</option>
                            <option>June</option>
                            <option>July</option>
                            <option>August</option>
                            <option>September</option>
                            <option>October</option>
                            <option>November</option>
                            <option>December</option>
                        </select>

                            <input name="date" type="text" class="box-half1" placeholder="Date" required />
                        <input name="year" type="text" class="box-half1" placeholder="Year" required />

                    </p>
                </div>
                
                <div class="form-box">
                    <p>
                        Gender <br>
                        <select name="gender" class="box width" id="height" required >
                            <option>Male</option>
                            <option>Female</option>
                        </select>
                    </p>
                </div>

                <div class="form-box">
                    <p>Phone Number <br /><input type="text" class="box" name="phno" placeholder="Cell Number" required ></p>
                </div>

                <div class="form-box">
                    <p>
                        Type Of User <br>
                        <select name="custype" class="box width" id="height" required >
                            <option>Customer</option>
                            <option>Admin</option>
                            <option>Manager</option>

                        </select>
                    </p>

                </div>

                <br />
                <center><button type="submit" class="btn1">Sign Up</button></center>
                <br />

            </form>
        </div>
    </div>

</body>
</html>