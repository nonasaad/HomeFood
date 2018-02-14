package com.amzi.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Date;

import com.amzi.bean.SignUpBean;
import com.amzi.util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;

//TODO check the database fields 

public class SignUpDao {
	public boolean registerUser(SignUpBean registerBean) {
		boolean status = false;
		String firstName = registerBean.getFirstName();
		String lastName = registerBean.getLastName();
		String address = registerBean.getAddress();
		String city = registerBean.getFirstName();
		String postacode = registerBean.getFirstName();
		String country = registerBean.getCountry();
		String email = registerBean.getEmail();
		String password = registerBean.getPassword();
		String driver = "com.mysql.jdbc.Driver";

		long phone = registerBean.getPhone();
		Date createdDate = registerBean.getCreatedDate();

		Connection conn = DBConnection.createConnection();
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			Class.forName(driver).newInstance();
			pst = (PreparedStatement) conn.prepareStatement(
					"insert into person(SlNo,firstName,lastName,Email,phone,is_admin,account_created_date,password) values (NULL,?,?,?,?,NULL,NULL,?,?,?,?)");
			if (firstName == null) {
				pst.setNull(1, Types.VARCHAR);
			} else {
				pst.setString(1, firstName);
			}																							
			
			pst.setString(2, lastName);
			pst.setString(3, email);
			
			if (phone == 0) {
				pst.setNull(4, Types.BIGINT);
			} else {
				pst.setLong(4, phone);
			}
			
			//is_Admin
			// created date 
			pst.setString(7, address);
			pst.setString(8, city);
			pst.setString(9, country);
			pst.setString(10, postacode);

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
