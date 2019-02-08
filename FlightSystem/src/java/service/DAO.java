/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;
//import controller.SignupServ;

import java.sql.DriverManager;
import java.sql.*;

/**
 *
 * @author Dell
 */
public class DAO {

    public static boolean insert(SignupModel user) {
        boolean check = false;
        String insertStr = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb", "root", "");
            PreparedStatement ps = null;
//          Statement stmt = (Statement)con.createStatement();
            insertStr = "insert into user(Fname, Lname, Email, Password, Month, Date, Year, Gender, Phone, Role)"
                    + "values(?,?,?,?,?,?,?,?,?,?)";
//          insertStr = "insert into user(Fname, Lname, Email, Password, Month, Date, Year, Gender, Phone, Role)" + 
//                    "values('"+user.getFname()+"','"+user.getLname()+"','"+user.getEmail()+"','"+user.getPassword()
//                    +"','"+user.getMonth()+"','"+user.getDate()+"','"+user.getYear()+"','"+user.getGender()+"','"+user.getPhoneNumber()
//                    +"','"+user.getTypeOfUser()+"')";
//            
            ps = con.prepareStatement(insertStr);
            ps.setString(1, user.getFname());
            ps.setString(2, user.getLname());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getMonth());
            ps.setString(6, user.getDate());
            ps.setString(7, user.getYear());
            ps.setString(8, user.getGender());
            ps.setString(9, user.getPhoneNumber());
            ps.setString(10, user.getTypeOfUser());
            ps.executeUpdate();

//        stmt.executeUpdate(insertStr);
            check = true;
        } catch (Exception e) {
            check = false;
        }
        return check;
    }

//    public static boolean BookFlight(BookingModel user) {
//        boolean check = false;
//        String insertStr = "";
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb", "root", "");
////          PreparedStatement ps = null;
//            Statement stmt = (Statement) con.createStatement();
////          insertStr = "insert into user(Fname, Lname, Email, Password, Month, Date, Year, Gender, Phone, Role)" + "values(?,?,?,?,?,?,?,?,?,?)";
//            insertStr = "insert into user(Fname, Lname, Email, Password, Month, Date, Year, Gender, Phone, Role)"
//                    + "values('" + user.getCID() + "','" + user.getOrigin() + "','" + user.getDest() + "','" + user.getDeparture()
//                    + "','" + user.getArrival() + "','" + user.getPassengers() + "','" + user.getPhNum() + "')";
//
//            stmt.executeUpdate(insertStr);
//            check = true;
//        } catch (Exception e) {
//            check = false;
//        }
//        return check;
//    }

    public static int delete(SignupModel user) {
        PreparedStatement ps = null;
        String query = "DELETE FROM USER " + "WHERE Email = ?";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb", "root", "");
            Statement stmt = (Statement) con.createStatement();
            ps = con.prepareStatement(query);
            ps.setString(1, user.getEmail());

            return ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static boolean emailExists(String emaillAddress) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT Email From user " + "WHERE Email = ?";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb", "root", "");
            ps = con.prepareStatement(query);
            ps.setString(1, emaillAddress);
            rs = ps.executeQuery();
            return rs.next();

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean passwordExists(String emaillAddress, String Password) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT Password From User " + "WHERE Email = ? AND Password = ?";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb", "root", "");
            ps = con.prepareStatement(query);
            ps.setString(1, emaillAddress);
            ps.setString(2, Password);
            rs = ps.executeQuery();
            return rs.next();

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

//    public static boolean checkEmail(String emaillAddress)
//    {
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        String query = "SELECT Email From User " + "WHERE Email = ?";
//        
//        try{
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb", "root", "");
//            ps = con.prepareStatement(query);
//            ps.setString(1, emaillAddress);
////            rs = ps.executeQuery();
//            ps.executeQuery();
////            return rs.next();
//return true;
//            
//        }catch(Exception e){
//            e.printStackTrace();
//            return false;
//        }
//    }
    public static boolean passwordMismatch(String password, String confirmPassword) {
        boolean mismatch = true;
        if (password.equals(confirmPassword)) {
            mismatch = false;
        }
        return mismatch;
    }
    
    public static boolean insertBooking(BookingModel user) {
        boolean check = false;
        String insertStr = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb", "root", "");
            PreparedStatement ps = null;

            insertStr = "insert into booking(EmailID, OriginCity, DestinationCity, DepartureDate, ArrivalDate, Passengers, PhoneNumber)"
                    + "values(?,?,?,?,?,?,?)";
      
            ps = con.prepareStatement(insertStr);
            ps.setString(1, user.getCID());
            ps.setString(2, user.getOrigin());
            ps.setString(3, user.getDest());
            ps.setString(4, user.getDeparture());
            ps.setString(5, user.getArrival());
            ps.setString(6, user.getPassengers());
            ps.setString(7, user.getPhNum());
            
            ps.executeUpdate();

            check = true;
            
        } catch (Exception e) {
            check = false;
        }
        return check;
    }
}

