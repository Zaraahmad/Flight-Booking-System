/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import service.SignupModel;
import service.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class SignupServ extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String fname = request.getParameter("fname");
                String lname = request.getParameter("lname");
                String email = request.getParameter("email1");
                String pwd = request.getParameter("pwd");
                String pwdc = request.getParameter("pwdc");
                String month = request.getParameter("month");
                String date = request.getParameter("date");
                String year = request.getParameter("year");
                String gender = request.getParameter("gender");
                String phno = request.getParameter("phno");
                String custype = request.getParameter("custype");
                
		SignupModel user = new SignupModel();
                user.setFname(fname);
                user.setLname(lname);
                user.setEmail(email);
                user.setPassword(pwd);
                user.setCpassword(pwdc);
                user.setMonth(month);
                user.setDate(date);
                user.setYear(year);
                user.setGender(gender);
                user.setPhoneNumber(phno);
                user.setTypeOfUser(custype);
                
                String message = "";
                
                if(DAO.emailExists(user.getEmail()))
                {
                    message = "This email address already exists<br>" +
                              "Please enter another email address.";
                }
                
                else if(DAO.passwordMismatch(user.getPassword(), user.getCpassword()))
                {
                    message = "The Passwords entered do not match<br>" +
                              "Please enter another Password.";
                }
                
                else{
                    boolean check=DAO.insert(user);
                    if(check==true)
                    message = "Signup Successful!";
                    else message = "oops";
                }

		request.setAttribute("message", message);

		RequestDispatcher view = request.getRequestDispatcher("index.jsp");

		view.forward(request, response);
            
	}
}

