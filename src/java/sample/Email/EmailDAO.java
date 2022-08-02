/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.Email;

import java.net.Authenticator;
import java.util.Properties;
import javax.websocket.Session;

/**
 *
 * @author SE150436 - Hoàng Quang Hòa
 */
public class EmailDAO {
    public static void send(EmailDTO email){
         Properties prop = new Properties();
         
         prop.put("mail.smtp.host","smtp.gmail.com");
         prop.put("mail.smtp.port","587");
         prop.put("mail.smtp.auth","true");
         prop.put("mail.smtp.starttls.enable","true");
         
         
    }
}
