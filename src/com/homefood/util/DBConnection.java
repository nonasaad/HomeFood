package com.homefood.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection createConnection() {
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/homemade_food"; // MySQL URL followed by the database name
		String username = "root"; // MySQL connection name
		String password = "password"; // MySQL connection password

		try {
			try {
				Class.forName("com.mysql.jdbc.Driver"); // loading MySQL drivers. This differs for database servers
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}

			conn = DriverManager.getConnection(url, username, password); // attempting to connect to MySQL database
			System.out.println("Printing connection object " + conn); // only for Debugging 
		} catch (Exception e) { 
			e.printStackTrace();
		}

		return conn;
	}
}
