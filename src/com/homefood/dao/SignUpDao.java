package com.homefood.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Date;

import com.homefood.bean.SignUpBean;
import com.homefood.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

//TODO check the database fields 

public class SignUpDao {
	public String registerUser(SignUpBean registerBean) {
		boolean status = false;
		String fullName = registerBean.getFullName();
		String address = registerBean.getAddress();
		String city = registerBean.getCity();
		String postacode = registerBean.getPostalcode();
		String country = registerBean.getCountry();
		String email = registerBean.getEmail();
		String password = registerBean.getPassword();
		String driver = "com.mysql.jdbc.Driver";
		Date createdDate = registerBean.getCreatedDate();

		Connection conn = DBConnection.createConnection();
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			//Class.forName(driver).newInstance();
			pst = (PreparedStatement) conn.prepareStatement(
					"insert into person(full_name,email,password) values (?,?,?)");
			pst.setString(1, fullName);
			pst.setString(2, email);
			pst.setString(3, password);

			int i = pst.executeUpdate();
			if (i != 0) // Just to ensure data has been inserted into the database
				return "SUCCESS";
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "Oops.. Something went wrong there..!"; // On failure, send a message for debugging .
	}
}