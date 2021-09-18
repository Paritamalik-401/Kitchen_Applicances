<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="databaseconnection.DbCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<% 
String path=application.getRealPath("promotions");
MultipartRequest multi=new MultipartRequest(request,path);
String pic=multi.getFilesystemName("pic");
String description=multi.getParameter("description");
System.out.println(description);
try{
Connection con=DbCon.getConnection();
Statement st4=con.createStatement();

Statement st=con.createStatement();
st.executeUpdate("insert into promocode(pic,description) values('"+pic+"','"+description+"')");
String url="amsg.jsp?msg=Promotion Added Successfully&color=green";
response.sendRedirect(url);

}catch(Exception e){
	System.out.println(e);
}
%>