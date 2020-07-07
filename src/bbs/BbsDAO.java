package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BbsDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	public BbsDAO() {
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
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	public int getNext() {
		String SQL = "SELECT bbsID FROM BBS ORDER BY bbsID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public int write(String bbsTitle, String id, String bbsContent) {
			String SQL = "INSERT INTO BBS VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, id);
			pstmt.setString(4, getDate());
			pstmt.setString(5, bbsContent);
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
    public ArrayList<Bbs> getList(int pageNumber){
    	String SQL =  "SELECT * FROM (SELECT * FROM BBS WHERE bbsid < ? AND bbsAvailable = 1 ORDER BY bbsid DESC) WHERE ROWNUM <= 10";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
    	try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1 ) * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsid(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setId(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				list.add(bbs);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
    }

    public boolean nextPage(int pageNumber) {
    	String SQL = "SELECT * FROM BBS WHERE bbsid < ?  AND bbsAvailable = 1";
    	try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1 ) * 10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}
		catch(Exception e) {
		}
		return false;
    }
    public ArrayList<Bbs> getList2(int pageNumber, String search){
    	String SQL = "SELECT * FROM (SELECT * FROM BBS WHERE bbsid < ? AND bbsAvailable = 1 ORDER BY bbsid DESC) WHERE ROWNUM <= 10";
    	ArrayList<Bbs> list2 = new ArrayList<Bbs>();
    	try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1 ) * 10);
			pstmt.setString(2, search);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsid(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setId(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				list2.add(bbs);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list2;
    }
}
