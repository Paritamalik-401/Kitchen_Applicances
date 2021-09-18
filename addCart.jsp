<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="databaseconnection.DbCon"%>
<%@page import="java.sql.Connection"%>
<% 
int pid = Integer.parseInt(request.getParameter("pid"));
int quantity = Integer.parseInt(request.getParameter("quntity"));
int usrId = Integer.parseInt((String)session.getAttribute("usrId"));
String status = "cart";
try{
Connection con=DbCon.getConnection();
Statement st=con.createStatement();
ResultSet rs = st.executeQuery("select * from orderDetails where usrId='"+usrId+"' and status = '"+status+"'");
int odid = 0;
if(rs.next()) {
	odid = rs.getInt("odid");
} else {
	Statement st2=con.createStatement();
	st2.executeUpdate("insert into orderDetails(usrId,status,datee) values('"+usrId+"','"+status+"',now())");
	Statement st3=con.createStatement();
	ResultSet rs3 = st3.executeQuery("select * from orderDetails where usrId='"+usrId+"' and status = '"+status+"'");
	if(rs3.next())  {
		odid = rs3.getInt("odid");
	}
}

Statement st4=con.createStatement();
ResultSet rs4 = st4.executeQuery("select * from orderItems where usrId='"+usrId+"' and odid = '"+odid+"' and pid='"+pid+"'");
if(rs4.next()) {
	Statement st5=con.createStatement();
	st5.executeUpdate("update orderItems set quantity='"+(rs4.getInt("quantity")+quantity)+"', datee=now() where usrId='"+usrId+"' and odid = '"+odid+"' and pid='"+pid+"'");
	out.print("Product Updated In Cart");
} else {
	Statement st5=con.createStatement();
	st5.executeUpdate("insert into orderItems(odid,usrId,pid,quantity,status,datee) values('"+odid+"','"+usrId+"','"+pid+"','"+quantity+"','"+status+"', now())");
	out.print("Product Added to Cart");
}
}catch(Exception e){
	System.out.println(e);
}
%>