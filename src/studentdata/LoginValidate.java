package studentdata;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginValidate")
public class LoginValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		ServletContext context=getServletContext();
		String stdid=request.getParameter("studentID");
		String password=request.getParameter("password");
		String dname=context.getInitParameter("drivername");
		String dburl=context.getInitParameter("databaseurl");
		try{
			Class.forName(dname);
			Connection con=DriverManager.getConnection(dburl,"Vipul","123");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from studentdata where studentID='"+stdid+"' and password='"+password+"'");
			
			if(rs.next()){
				Statement st1=con.createStatement();
				ResultSet rs1=st1.executeQuery("select teamname from studentdata where studentID='"+stdid+"'");
				rs1.next();
				String teamName=rs1.getString(1);
				Statement st2=con.createStatement();
				ResultSet rs2=st2.executeQuery("select * from unplayedteams where teamname='"+teamName+"'");
				
				if(rs2.next()){
					HttpSession session=request.getSession();
					session.setMaxInactiveInterval(40*60);
					session.setAttribute("studentID",stdid);
					session.setAttribute("teamName",teamName);
					java.util.Date dt=new java.util.Date();
					SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy 'at' hh:mm:ss a");
					String time=sdf.format(dt);
					int i=st.executeUpdate("update studentdata set STARTTIME='"+time+"' where teamname='"+teamName+"'");
					
					int j=st.executeUpdate("delete unplayedteams where teamname='"+teamName+"'");
					if(i!=0 && j!=0){
						rs=st.executeQuery("select STUDENTNAME,YEAR from STUDENTDATA where studentID='"+stdid+"'");
						rs.next();
						session.setAttribute("studentName", rs.getString(1));
						response.sendRedirect("quizpage.jsp");
					}
				}else{
					HttpSession session=request.getSession();
					session.setAttribute("message", "error2");
					response.sendRedirect("index.jsp");
					return;
				}
			}else{
				HttpSession session=request.getSession();
				session.setAttribute("message", "error1");
				response.sendRedirect("index.jsp");
				return;
			}
		}catch(Exception e){
			out.println(e.getMessage());
		}
	}
}
