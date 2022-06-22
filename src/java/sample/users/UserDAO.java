/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import sample.users.UserDTO;
import sample.utils.DBUtils;

/**
 *
 * @author win
 */
public class UserDAO {
      private static final String LOGIN = "SELECT UserID, roleID, age, address, email, gender, phoneNumber, status, img, fullName, bio  FROM tblUser WHERE userName=? AND password=?";
      private static final String DUPLICATE = "SELECT userName FROM tblUser WHERE userName=?";
      private static final String ONE_USER = "SELECT * FROM tblUser WHERE userID=?";
      
      public UserDTO checkLogin(String userName, String password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, userName);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    int UserID = rs.getInt("UserID");
                    int age = rs.getInt("age");
                    String address = rs.getString("address");
                    String email = rs.getString("email");
                    int gender = rs.getInt("gender");
                    String phoneNumber = rs.getString("phoneNumber");
                    String status = rs.getString("status");
                    String img = rs.getString("img");
                    String fullName = rs.getString("fullName");
                    String bio = rs.getString("bio");
                    int roleID = rs.getInt("roleID");
                    
                    user = new UserDTO(UserID, age, address, email, gender, phoneNumber, status, img, fullName, bio, userName, password, roleID);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return user;
    }
      
        public boolean checkDuplicate(String userName) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(DUPLICATE);
                ptm.setString(1, userName);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    check = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }
        
    //get user by ID
    public UserDTO getUserByID(int id) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(ONE_USER);
                stm.setInt(1, id);
                rs = stm.executeQuery();
                while (rs.next()) {
                    int UserID = rs.getInt("userID");
                    int age = rs.getInt("age");
                    String address = rs.getString("address");
                    String email = rs.getString("email");
                    int gender = rs.getInt("gender");
                    String phoneNumber = rs.getString("phoneNumber");
                    String status = rs.getString("status");
                    String img = rs.getString("img");
                    String fullName = rs.getString("fullName");
                    String bio = rs.getString("bio");
                    String userName = rs.getString("userName");
                    String password = rs.getString("password");
                    int roleID = rs.getInt("roleID");   
                    user = new UserDTO(UserID, age, address, email, gender, phoneNumber, status, img, fullName, bio, userName, password, roleID);
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
        return user;
    }
    
    //Update Image
    public void updateImg (int id ,String img) throws SQLException {
        
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = " UPDATE tblUser "
                        + "SET img=? "
                        + " WHERE userID=?";
                stm = conn.prepareStatement(sql);
                stm.setString(1, img);
                stm.setInt(2, id);
                stm.executeUpdate() ;
            }
        } catch (ClassNotFoundException | SQLException | NumberFormatException e) {
        } finally {
            if (conn != null) {
                conn.close();
            }
            if (stm != null) {
                stm.close();
            }
        }        
    }
    
    public void updateUser (int id , int age, String address, String email, int gender, String phoneNumber, String fullName, String bio) throws SQLException {
        
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = " UPDATE tblUser "
                        + "SET age=?, address=?, email=?, gender=?, phoneNumber=?, fullName=?, bio=? "
                        + " WHERE userID=?";
                stm = conn.prepareStatement(sql);
                stm.setInt(1, age);
                stm.setString(2, address);
                stm.setString(3, email);
                stm.setInt(4, gender);
                stm.setString(5, phoneNumber);
                stm.setString(6, fullName);
                stm.setString(7, bio);
                stm.setInt(8, id);
                stm.executeUpdate();
            }
        } catch (ClassNotFoundException | SQLException | NumberFormatException e) {
        } finally {
            if (conn != null) {
                conn.close();
            }
            if (stm != null) {
                stm.close();
            }
        }
    }
}
