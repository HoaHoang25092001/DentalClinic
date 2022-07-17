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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author SE150436 - Hoàng Quang Hòa
 */
public class AppoinmentDAO {

    private static final String INSERT = "INSERT INTO tblAppoinment_details (fullName, email, phoneNumber, appointment_date, note, serviceID, doctorID, wkID, status) VALUES (?,?,?,?,?,?,?,?,?)";
    private static final String APPOINMENT_BY_DOCTORID = "SELECT * FROM tblAppoinment_details where doctorID=?";
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
            ptm.setString(9, appoinment.getStatus());

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
    
    //get list appoinment by doctorID
    public List<AppoinmentDTO> getAppoinmentByDoctorID(int doctorID) throws SQLException {
        List<AppoinmentDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(APPOINMENT_BY_DOCTORID);
                stm.setInt(1, doctorID);
                rs = stm.executeQuery();
                while (rs.next()) {
                    int appoinmentID = rs.getInt("appoinmentID");
                    String fullName = rs.getString("fullName");
                    String email = rs.getString("email");
                    String phoneNumber = rs.getString("phoneNumber");
                    Date appointment_date = rs.getDate("appointment_date");
                    String note = rs.getString("note");
                    int serviceID = rs.getInt("serviceID");
                    int wkID = rs.getInt("wkID");
                    String status = rs.getString("status");
                    list.add(new AppoinmentDTO(fullName, email, phoneNumber, appointment_date, note, serviceID, doctorID, wkID, status));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }
}
