package studentdata;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class FirstYearOptions {
	static Connection con;
	static Statement st;
	static PreparedStatement ps;
	static ResultSet rs;
	static void connectDatabase() {
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//forName loads the class from HDD to MM
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "Vipul", "123");
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
	static public String getAnswer(int qno) {
		try{
			connectDatabase();
			st=con.createStatement();
			rs=st.executeQuery("select ANSWER from FIRSTYEAROPTIONS where QNO='"+qno+"'");
			rs.next();
			String ans=rs.getString(1);
			return ans;
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return null;
	}
}
