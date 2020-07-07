package db;
import javax.naming.*;
import java.sql.*;
import javax.sql.*;



public class DBconn {
   
   public static Context initCtx = null;
   public static Context envCtx = null;
   public static DataSource ds = null;
   public static Connection con = null;
   public static Statement st = null;
   public static ResultSet rs = null;
   public static PreparedStatement prst = null;
   
   //DB 연결----------------------------------------------------------------------   
   public static void open() throws NamingException, SQLException {
      initCtx = new InitialContext();
       envCtx = (Context) initCtx.lookup("java:comp/env");
       ds = (DataSource) envCtx.lookup("jdbc/dit");
       con = ds.getConnection();
   }
   
   //DB 쿼리(SELECT)--------------------------------------------------------------
   public static ResultSet selectQuery(String sql) throws SQLException {
       Statement st = con.createStatement();
       ResultSet rs = st.executeQuery(sql);
       
      return rs;
   }
   
   //DB 쿼리(그 외)--------------------------------------------------------------
      public static PreparedStatement updateQuery(String sql) throws SQLException {
         PreparedStatement prst = con.prepareStatement(sql);
         
         return prst;
      }

   //DB 해제----------------------------------------------------------------------
   public static void close() throws SQLException {
      if(rs!=null) rs.close();
      if(st!=null) st.close();
      if(con!=null) con.close();
   }
}