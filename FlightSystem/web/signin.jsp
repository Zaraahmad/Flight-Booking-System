<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title> Sign In </title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css">
        
        
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
    <center><h3><a href="">Sign In</a></h3></center>
    
    <div class="login-padding ">
        <div>
            <form method = "Post" action="signin" name="regF" onsubmit="return validateForm()">
                <br><br>

                <div class="form-box">
                    <p>
                        Type Of User <br>
                        <select name= "user-type" class="box width" id="height" required>
                            <option>Customer</option>
                            <option>Admin</option>
                            <option>Manager</option>

                        </select>
                    </p>

                </div>

                <div class="form-box">
                    <label for="email1">Username</label>
                    <br>
                        <input type="email" class="box" name="email1" placeholder="Enter email" onblur="checkExist(this.value)" required/><span id="isE"></span>
                    <br><br>
                </div>
                   
                <div class="form-box">
                    <label for="pwd"> Password</label>
                    <br>
                    <input type="password" class="box" name="pwd" placeholder="Enter password"  >
                    <br><br>
                </div>


                <div class="checkbox">
                        <label><input type="checkbox" value="">Keep me signed in</label>
                </div>

                <div class="frgt">
                        <a href="signin.html">Forgot password?</a>
                </div>

                <div class="clear"></div>
                <br>
                <center><button type="submit" class="btn1">Login</button></center><br>
                
                    <center><a href="signup.jsp">Create account </a><br><br></center>
                

</form>
        </div>
    </div>
    <script>
        function checkExist(username){
                var xhttp = new XMLHttpRequest();
               // var username = document.forms["regF"]["email1"].value;
               // var url = "exist.jsp?username=" + username;
                xhttp.onreadystatechange = function(){
                    if(this.readyState == 4 && this.status == 200){
                        
                        document.getElementById("isE").innerHTML = this.responseText;
                    }
                    
                };
                try{
                xhttp.open("GET","exists.jsp?username=" + username,true);
                xhttp.send();
                }catch(e){alert("unable to connect to server");
                }   
        }
    </script>
    
    <script>
        
        function validateForm() {
                var x = document.forms["regF"]["pwd"].value;
                if (x == "") {
                    alert("Password must be filled out");
                    return false;
            }
            
}
    </script>
</body>
</html>