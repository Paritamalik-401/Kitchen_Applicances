
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="databaseconnection.DbCon"%>
<%@page import="java.sql.Connection"%>

<% 
String uid = (String)session.getAttribute("usrId");
String uname = (String)session.getAttribute("name");
String phone = (String)session.getAttribute("phone");
String feedback = request.getParameter("feedback");


try{
Connection con=DbCon.getConnection();
Statement st=con.createStatement();

st.executeUpdate("insert into feedback(feedback,datee,uid,uname,phone) values('"+feedback+"',now(),'"+uid+"','"+uname+"','"+phone+"')");
String url="cmsg.jsp?msg=Thank you for your feeback&color=green";
response.sendRedirect(url);
}catch(Exception e){
	System.out.println(e);
	String url="cmsg.jsp?msg=Fails to send feeback&color=red";
	response.sendRedirect(url);
}
%>