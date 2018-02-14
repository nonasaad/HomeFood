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
					"insert into person(first_name,email,password) values (?,?,?)");
			pst.setString(1, fullName);
			pst.setString(3, email);
			pst.setString(4, password);

			int i = pst.executeUpdate();
			if (i != 0) // Just to ensure data has been inserted into the database
				return "SUCCESS";
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "Oops.. Something went wrong there..!"; // On failure, send a message for debugging .
	}
}