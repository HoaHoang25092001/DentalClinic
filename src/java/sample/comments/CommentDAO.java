/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.comments;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author SE150436 - Hoàng Quang Hòa
 */
public class CommentDAO {
    private static final String ALL_FEEDBACK = "SELECT * FROM tblComments, tblUser where tblComments.userID = tblUser.userID";
    private static final String INSERT = "INSERT INTO tblComments (name, rate, contentCmt, status, userID, doctorID, cmtDate) VALUES (?,?,?,?,?,?,?)";
    private static final String FEEDBACK_BY_DOCTORID = "SELECT * FROM tblComments where doctorID=? AND status='Avalable'";
    
    public boolean insert(CommentDTO comment) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(INSERT);
            ptm.setString(1, comment.getName());
            ptm.setInt(2, comment.getRate());
            ptm.setString(3, comment.getContentCmt());
            ptm.setString(4,"Unavalable");
            ptm.setInt(5, comment.getUserID());
            ptm.setInt(6, comment.getDoctorID());
            ptm.setString(7, comment.getCmtTime());
          
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
    
    // Get all comment
    public List<CommentDTO> getListAllFeedback() throws SQLException {
        List<CommentDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(ALL_FEEDBACK);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String name = rs.getString("name");
                    int rate = rs.getInt("rate");
                    String contentCmt = rs.getString("contentCmt");
                    int userID = rs.getInt("userID");
                    int doctorID = rs.getInt("doctorID");
                    String cmtDate = rs.getString("cmtDate");
                    
                    list.add(new CommentDTO(name, rate, contentCmt, userID, doctorID, cmtDate));
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
    
    //get list feedback by doctorID
    public List<CommentDTO> getFeedbackByDoctorID(int doctorID) throws SQLException {
        List<CommentDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(FEEDBACK_BY_DOCTORID);
                stm.setInt(1, doctorID);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String name = rs.getString("name");
                    int rate = rs.getInt("rate");
                    String contentCmt = rs.getString("contentCmt");
                    int userID = rs.getInt("userID");
                    String cmtDate = rs.getString("cmtDate");   
                    list.add(new CommentDTO(name, rate, contentCmt, userID, doctorID, cmtDate));
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
    
    public static void main(String[] args) throws SQLException {
        CommentDAO dao = new CommentDAO();
        List<CommentDTO> list = dao.getFeedbackByDoctorID(2);
        for (CommentDTO o : list) {
            System.out.println(o);
        }
    }
}
