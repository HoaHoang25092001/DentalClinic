/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.services;

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
public class ServiceDAO {
    private static final String ALL_SERVICE = "SELECT * FROM tblService";
    private static final String ONE_SERVICE = "SELECT * FROM tblService WHERE serviceID=?";
    
    public List<ServiceDTO> getListAllService() throws SQLException {
        List<ServiceDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(ALL_SERVICE);
                rs = stm.executeQuery();
                while (rs.next()) {
                    int serviceID = rs.getInt("serviceID");
                    String serviceName = rs.getString("serviceName");
                    String demo = rs.getString("demo");
                    String title1 = rs.getString("title1");
                    String title2 = rs.getString("title2");
                    String title3 = rs.getString("title3");
                    String description1 = rs.getString("description1");
                    String description2 = rs.getString("description2");
                    String description3 = rs.getString("description3");
                    String title1_img = rs.getString("title1_img");
                    String title2_img = rs.getString("title2_img");
                    String title3_img = rs.getString("title3_img");
                    String service_img = rs.getString("service_img");
                    list.add(new ServiceDTO(serviceID, serviceName, demo, title1, title2, title3, description1, description2, description3, title1_img, title2_img, title3_img, service_img));
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
    
    
    //get service by ID
    public ServiceDTO getServiceByID(int id) throws SQLException {
        ServiceDTO service = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(ONE_SERVICE);
                stm.setInt(1, id);
                rs = stm.executeQuery();
                while (rs.next()) {
                    int serviceID = rs.getInt("serviceID");
                    String serviceName = rs.getString("serviceName");
                    String demo = rs.getString("demo");
                    String title1 = rs.getString("title1");
                    String title2 = rs.getString("title2");
                    String title3 = rs.getString("title3");
                    String description1 = rs.getString("description1");
                    String description2 = rs.getString("description2");
                    String description3 = rs.getString("description3");
                    String title1_img = rs.getString("title1_img");
                    String title2_img = rs.getString("title2_img");
                    String title3_img = rs.getString("title3_img");
                    String service_img = rs.getString("service_img");
                    service = new ServiceDTO(serviceID, serviceName, demo, title1, title2, title3, description1, description2, description3, title1_img, title2_img, title3_img, service_img);
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
        return service;
    }
}
