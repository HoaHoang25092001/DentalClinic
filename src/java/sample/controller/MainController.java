/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SE150436 - Hoàng Quang Hòa
 */
public class MainController extends HttpServlet {
    private static final String ERROR = "error.jsp";
    private static final String LOGIN = "Login";
    private static final String LOGIN_CONTROLLER = "LoginController";
    private static final String LOGOUT = "Logout";
    private static final String LOGOUT_CONTROLLER = "LogoutController";
    private static final String LOGINGOOGLE = "LoginGoogle";
    private static final String LOGINGOOGLE_CONTROLLER = "LoginGoogleController";
    private static final String SERVICE = "Service";
    private static final String SERVICE_CONTROLLER = "ServiceController";
    private static final String VIEWPF = "ViewProfile";
    private static final String VIEWPROFILE_CONTROLLER = "ProfileController";
    private static final String SAVEIMG = "SaveImg";
    private static final String SAVE_IMAGE_CONTROLLER = "SaveImageController";
    private static final String SAVEINFO = "SaveInfo";
    private static final String SAVE_INFOMATION_CONTROLLER = "SaveInformationController";
    private static final String VIEWDOCTOR = "Doctor";
    private static final String VIEWDOCTOR_CONTROLLER = "DoctorController";
    private static final String DISPLAY = "Display";
    private static final String PRICE_DISPLAY = "PriceDisplayController";
    private static final String FEEDBACK = "Send";
    private static final String FEEDBACK_CONTROLLER = "CommentController";
    private static final String BOOKING = "Booking";
    private static final String BOOKING_CONTROLLER = "BookAppoinmentController";
    private static final String SEND_BOOKING = "Send_Appoinment";
    private static final String SEND_BOOKING_CONTROLLER = "SendAppoinmentController";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       String url = ERROR;
        try {
            String action = request.getParameter("action");
            if (LOGIN.equals(action)) {
                url = LOGIN_CONTROLLER;
            }else if (LOGOUT.equals(action)) {
                url = LOGOUT_CONTROLLER;
            }else if (SERVICE.equals(action)) {
                url = SERVICE_CONTROLLER;
            }else if (VIEWPF.equals(action)) {
                url = VIEWPROFILE_CONTROLLER;
            }else if (SAVEIMG.equals(action)) {
                url = SAVE_IMAGE_CONTROLLER;
            }else if (SAVEINFO.equals(action)) {
                url = SAVE_INFOMATION_CONTROLLER;
            }else if (VIEWDOCTOR.equals(action)) {
                url = VIEWDOCTOR_CONTROLLER;
            }else if (DISPLAY.equals(action)) {
                url = PRICE_DISPLAY;
            }else if (FEEDBACK.equals(action)) {
                url = FEEDBACK_CONTROLLER;
            }else if (BOOKING.equals(action)) {
                url = BOOKING_CONTROLLER;
            }else if (LOGINGOOGLE.equals(action)) {
                url = LOGINGOOGLE_CONTROLLER;
            }else if (SEND_BOOKING.equals(action)) {
                url = SEND_BOOKING_CONTROLLER;
            }
        } catch (Exception e) {
            log("Error at MainController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
        processRequest(request, response);
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
