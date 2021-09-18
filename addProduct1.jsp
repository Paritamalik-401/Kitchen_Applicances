<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="databaseconnection.DbCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<% 
String path=application.getRealPath("products");
MultipartRequest multi=new MultipartRequest(request,path);
String cid=multi.getParameter("cid");
String scid=multi.getParameter("scid");
String pname=multi.getParameter("pname");
String pimage=multi.getFilesystemName("pimage");
String description=multi.getParameter("description");
float price = Float.parseFloat(multi.getParameter("price"));

try{
Connection con=DbCon.getConnection();
Statement st4=con.createStatement();

Statement st=con.createStatement();
ResultSet rs = st.executeQuery("select * from subCategory where scid='"+scid+"'");

if(rs.next()) {
	st4.executeUpdate("insert into products(cid,cname,scid,scname,pname,pimage,description,status,price) values('"+rs.getInt("cid")+"','"+rs.getString("cname")+"','"+rs.getInt("scid")+"','"+rs.getString("scname")+"','"+pname+"','"+pimage+"','"+description+"','activated','"+price+"')");
	String url="amsg.jsp?msg=Product Added Successfully&color=green";
	response.sendRedirect(url);
} else {
	String url="amsg.jsp?msg=Invalid Selection&color=red";
	response.sendRedirect(url);
}
}catch(Exception e){
	System.out.println(e);
}
%>