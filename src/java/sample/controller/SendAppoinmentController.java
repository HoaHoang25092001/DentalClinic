/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.Appoinment.AppoinmentDAO;
import sample.Appoinment.AppoinmentDTO;

/**
 *
 * @author SE150436 - Hoàng Quang Hòa
 */
public class SendAppoinmentController extends HttpServlet {

    private static final String LOGIN_PAGE = "booking.jsp";
    private static final String HOME_PAGE = "HomeController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        String fullName = request.getParameter("fullName");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String note = request.getParameter("note");
        Date appoinmentDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("appoinmentDate"));
        int serviceID = Integer.parseInt(request.getParameter("serviceID"));
        int doctorID = Integer.parseInt(request.getParameter("doctorID"));
        int wkID = Integer.parseInt(request.getParameter("wkID"));
        String status = "not examined";
        String url = HOME_PAGE;

        try {
            AppoinmentDTO dto = new AppoinmentDTO();
            dto = new AppoinmentDTO(fullName, email, phoneNumber, appoinmentDate, note, serviceID, doctorID, wkID, status);
            AppoinmentDAO dao = new AppoinmentDAO();
            boolean result = dao.insert(dto);
            if (result) {
                url = LOGIN_PAGE;
            }
        } catch (SQLException ex) {
            log("CommentController _ SQLException" + ex.getMessage());
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(SendAppoinmentController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SendAppoinmentController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(SendAppoinmentController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SendAppoinmentController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
