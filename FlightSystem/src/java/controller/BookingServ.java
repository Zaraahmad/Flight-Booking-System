/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.BookingModel;
import service.DAO;
import util.SendEmail;

/**
 *
 * @author zara-
 */
public class BookingServ extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BookingServ</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookingServ at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String CID = request.getParameter("cid");
        String origin = request.getParameter("oc");
        String dest = request.getParameter("dc");
        String departure = request.getParameter("dd");
        String arrival = request.getParameter("ad");
        String passengers = request.getParameter("pt");
        String phNum = request.getParameter("phno");
        
        BookingModel booking = new BookingModel();
        booking.setCID(CID);
        booking.setOrigin(origin);
        booking.setDest(dest);
        booking.setDeparture(departure);
        booking.setArrival(arrival);
        booking.setPassengers(passengers);
        booking.setPhNum(phNum);
        
        String newline = System.getProperty("line.separator");
        String message = "";
        String subject = "Booking Itinerary";
        String EmailMsg = "Your Booking has been confirmed with ASIAN AIRWAYS." + newline +  "Following is the Travel Itinearary for your record:" 
                + newline + newline + 
                "Origin: " + origin + newline + 
                "Destination: " + dest + newline + 
                "Departure Date: " + departure + newline + 
                "Arrival Date: " + arrival + newline + 
                "Number Of Passengers: " + passengers + newline;
        
        boolean check = DAO.insertBooking(booking);
        if(check==true){
            message = "Signup Successful";
            SendEmail SE = new SendEmail(CID, subject, EmailMsg);
        }
        else
            message = "OOPS";
        
        request.setAttribute("message", message);
        
        RequestDispatcher view = request.getRequestDispatcher("itinerary.jsp");
        
        view.forward(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
