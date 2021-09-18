<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="databaseconnection.DbCon"%>
<%@page import="java.sql.Connection"%>

<% 
int usrId = Integer.parseInt((String)session.getAttribute("usrId"));
String money = request.getParameter("money");
String carddetails = request.getParameter("carddetails");
String datee = request.getParameter("datee");
String cvv = request.getParameter("cvv");

System.out.println(money);
System.out.println(carddetails);
System.out.println(datee);
System.out.println(cvv);

try{
Connection con=DbCon.getConnection();
Statement st=con.createStatement();
	st.executeUpdate("update users set wallet = wallet+ '"+money+"';");
	String url="cmsg.jsp?msg=Money Add to Wallet Successfully&color=green";
	response.sendRedirect(url);
}catch(Exception e){
	System.out.println(e);
}
%>