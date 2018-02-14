package com.amzi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.amzi.util.DBConnection;

public class LoginDao {
    public static boolean validate(String email, String pass) {        
        boolean status = false;
        Connection conn = DBConnection.createConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        
       // String driver = "com.mysql.jdbc.Driver";
        try {
            //Class.forName(driver).newInstance();
            pst = (PreparedStatement) conn.prepareStatement("select * from person where email=? and password=?");
          
            pst.setString(1, email);
            pst.setString(2, pass);

            rs = pst.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    }
}

