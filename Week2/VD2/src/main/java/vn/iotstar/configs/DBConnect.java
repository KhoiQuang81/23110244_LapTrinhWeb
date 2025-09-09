package vn.iotstar.configs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBConnect {
	private final String serverName = "localhost";
	private final String dbName = "LapTrinhWebWeek03";
	private final String portNumber = "1433";
	private final String instance = "";
	private final String userID = "sa";
	private final String password = "QKhoi6977";

	public Connection getConnection() throws Exception {
		String url = "jdbc:sqlserver://" + serverName + "\\" + instance + ":" + portNumber + ";databaseName=" + dbName
				+ ";encrypt=false;trustServerCertificate=true;";
		if (instance == null || instance.trim().isEmpty())
			url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName
					+ ";encrypt=false;trustServerCertificate=true;";
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url, userID, password);
	}

	public static void main(String[] args) {
		String sqlInsert = "INSERT INTO [User] (email, username, fullname, password, phone) VALUES(?, ?, ?, ?, ?)";
		String selectAll = "SELECT * FROM [User]";
		try {
			// connect to database
			Connection conn = new DBConnect().getConnection();
			// crate statement to insert GiaoVien
			PreparedStatement stmt = conn.prepareStatement(sqlInsert);
			stmt.setString(1, "qkhoi1142@gmail.com");
			stmt.setString(2, "qkhoi");
			stmt.setString(3, "Quang Khoi");
			stmt.setString(4, "12345");
			stmt.setString(5, "0909991142");
			stmt.execute();

			stmt = conn.prepareStatement(selectAll);

			ResultSet rs = stmt.executeQuery();
			// show data
			while (rs.next()) {
				System.out.println(
		                rs.getInt("id") + " | " +
		                rs.getString("email") + " | " +
		                rs.getString("username") + " | " +
		                rs.getString("fullname") + " | " +
		                rs.getString("password") + " | " +
		                rs.getString("phone")
		            );
			}
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
