<%-- 
    Document   : result
    Created on : 05-Nov-2017, 17:12:15
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
//        <h1>Hello World!</h1>
        <p>
            <%
			String styles = (String)request.getAttribute("message");
			//out.print("<br>try: " + styles);
                        out.print(styles);
			
            %>
        </p>
    </body>
</html>
