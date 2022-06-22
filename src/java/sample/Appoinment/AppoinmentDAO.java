/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.Appoinment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import sample.comments.CommentDTO;
import sample.utils.DBUtils;

/**
 *
 * @author SE150436 - Hoàng Quang Hòa
 */
public class AppoinmentDAO {

    private static final String INSERT = "INSERT INTO tblAppoinment_details (fullName, email, phoneNumber, appointment_date, note, serviceID, doctorID, wkID) VALUES (?,?,?,?,?,?,?,?)";

    public boolean insert(AppoinmentDTO appoinment) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(INSERT);
            ptm.setString(1, appoinment.getFullName());
            ptm.setString(2, appoinment.getEmail());
            ptm.setString(3, appoinment.getPhoneNumber());
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            ptm.setString(4, df.format(appoinment.getAppointment_date()));
            ptm.setString(5, appoinment.getNote());
            ptm.setInt(6, appoinment.getServiceID());
            ptm.setInt(7, appoinment.getDoctorID());
            ptm.setInt(8, appoinment.getWkID());

            check = ptm.executeUpdate() > 0 ? true : false;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
            return check;
        }
    }
}
