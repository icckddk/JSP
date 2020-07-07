package user;

import java.sql.*;

public class UserDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	public UserDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@//localhost:1521/xepdb1";
			String dbID = "JSP";
			String dbPassword = "1111";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int login(String id, String pwd) {
		String sql = "select pwd from member where id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(pwd)) {
					return 1;
				}
				else
					return 0;
			}
			return -1;
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return -2;
	}
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?)";
		try{
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPwd());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getPhone());
			pstmt.setString(5, user.getEmail());
			return pstmt.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return -1;
	}
}
