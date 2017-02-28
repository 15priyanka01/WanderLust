package com.mmt.controller;

import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.mmt.model.bean.User;

public class SendEmail {
	
	
	private String password;
    private String fromEmail="project.sapient17@gmail.com";
    private String fromPassword="sapient@123";
    private String message="Please login with  given password:  ";
    private String subject="Mail verification";
    
    static Properties properties = new Properties();
    
    
    static
	   {
	      properties.put("mail.smtp.host", "smtp.gmail.com");
//	      properties.put("mail.smtp.socketFactory.port", "465");
	      properties.put("mail.smtp.socketFactory.port", "587");
	      properties.put("mail.smtp.socketFactory.class",
	                     "javax.net.ssl.SSLSocketFactory");
	      properties.put("mail.smtp.auth", "true");
//	      properties.put("mail.smtp.port", "465");
	      properties.put("mail.smtp.port", "587");
	   }
    
    
	public String getPassword() {
		return password;
	}


	public void setPassword() {
		String charset="abcdefghijklmnopqrstuvwxyz1234567890";
        StringBuilder str= new StringBuilder();
        
        Random rand=new Random();
        while(str.length() < 8){
            int index=(int)(rand.nextFloat() * charset.length());
            str.append(charset.charAt(index));
        }
        this.password=str.toString();
	}


	
		
	    
	    
	  
	    
	   
	 public  String sendMail(String toEmail){
	        Boolean mailStatus=false;
	        try
	      {
	         setPassword();
	          Session session = Session.getDefaultInstance(properties,  
	            new javax.mail.Authenticator() {
	            protected PasswordAuthentication 
	            getPasswordAuthentication() {
	            return new 
	            PasswordAuthentication(fromEmail, fromPassword);
	            }});

	         Message message = new MimeMessage(session);
	         message.setFrom(new InternetAddress(fromEmail));
	         message.setRecipients(Message.RecipientType.TO, 
	            InternetAddress.parse(toEmail));
	         message.setSubject(subject);
	         message.setText(this.message + getPassword());
	         Transport.send(message);
	         mailStatus=true;
	      }
	      catch(Exception e)
	      {
	         
	        e.printStackTrace();
	      }
	      return getPassword();

	
	}
}
