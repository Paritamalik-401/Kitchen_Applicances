<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="databaseconnection.DbCon"%>
<%@page import="java.sql.Connection"%>
<%
String usrId = (String)session.getAttribute("usrId");
String pid = request.getParameter("pid");

try{
Connection con=DbCon.getConnection();
Statement st=con.createStatement();
ResultSet rs = st.executeQuery("select * from wishlist where usrId='"+usrId+"' and pid='"+pid+"'");
if(rs.next()){
	Statement st2=con.createStatement();
	st2.executeUpdate("delete from wishlist where usrId='"+usrId+"' and pid='"+pid+"'");
} else {
	Statement st2=con.createStatement();
	st2.executeUpdate("insert into wishlist(usrId,pid) values('"+usrId+"','"+pid+"')");
}
}catch(Exception e){
	System.out.println(e);
}
%>