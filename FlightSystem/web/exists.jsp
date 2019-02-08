<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con =(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb", "root", "");
            PreparedStatement ps = con.prepareStatement("SELECT  * FROM user WHERE " +
                    "Email = ?");
            ps.setString(1,request.getParameter("username"));
            ResultSet res = ps.executeQuery();
            if(res.first()){
                out.print("User is in db");
            }else{
                out.print("User does not exist");
            }
        }catch (Exception e){
            System.out.println(e);  
        }
%>