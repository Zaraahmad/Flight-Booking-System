/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import service.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.DAO;
import service.SignupModel;

import org.jsoup.*;
import org.jsoup.safety.Whitelist;

/**
 *
 * @author Dell
 */
public class signin extends HttpServlet {

public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
                String custype = Jsoup.clean(request.getParameter("user-type"),Whitelist.basic());
                String email = Jsoup.clean(request.getParameter("email1"),Whitelist.basic());
                String pwd = Jsoup.clean(request.getParameter("pwd"),Whitelist.basic());
                
                
		SignupModel user = new SignupModel();
                
                user.setTypeOfUser(custype);
                user.setEmail(email);
                user.setPassword(pwd);
                
                String page = "";
                String message = custype;
                
                if(DAO.emailExists(user.getEmail()))
                {
//                    if(DAO.passwordExists(email, pwd))
//                    {
                        
                        if(custype.equals("Customer"))
                        
                        {
                            RequestDispatcher view = request.getRequestDispatcher("bookflight.jsp");
                            view.forward(request, response);
                        }
                  //          page = "/bookflight.jsp";
                        if(custype.equals("Admin")){
                            RequestDispatcher view = request.getRequestDispatcher("features.jsp");
                            view.forward(request, response);
                        }
//                            page = "/features.jsp";
                        else if(custype.equals("Manager")){
                            RequestDispatcher view = request.getRequestDispatcher("manager.jsp");
                            view.forward(request, response);
                        }
//                            page = "/manager.jsp";
//                    }
                    
                }
                
                

//		request.setAttribute("message", message);

//		RequestDispatcher view = request.getRequestDispatcher("helloWorld.jsp");

//		view.forward(request, response);
            
	}

}
