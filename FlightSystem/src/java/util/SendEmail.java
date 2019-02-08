/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author zara-
 */
public class SendEmail {
    
    private String user = "Enter Email";//Write email here
    private String pass = "Enter password";//Write password
    public SendEmail(String to, String subject, String msg)
    {
        Properties props = new Properties();
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        props.put("mail.smtp.auth", true);
        props.put("mail.smtp.starttls.enable", true);
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        
        
        Session session = Session.getInstance(props, new javax.mail.Authenticator() 
        {
               protected javax.mail.PasswordAuthentication getPasswordAuthentication()
               {
                   return new javax.mail.PasswordAuthentication(user, pass);
               }
        });
        
        try
        {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("ZTZD"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(msg);
            
            Transport.send(message);
            
            System.out.println("Mail Sent");
        }
        catch(Exception e)
        {
            System.out.println(e);
        
        }
               
            
    }
    
}
