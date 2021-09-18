<%@ include file="ahead.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="databaseconnection.DbCon"%>
<%@page import="java.sql.Connection"%>
<% 
try{
	String cid = request.getParameter("cid");
	Connection con=DbCon.getConnection();
	Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from category");
	Statement st2=con.createStatement();
    ResultSet rs2=st2.executeQuery("select * from category");
	Statement st3=con.createStatement();
	
	String q  = "select * from subCategory";
	if(!cid.equalsIgnoreCase("all")){
		q  = "select * from subCategory where cid='"+cid+"'";
	}
    ResultSet rs3=st3.executeQuery(q);
    %>
    
<div class="container">
    <div class="row">
    <div class="col-md-3"></div>
        <div class="col-md-6 pl-4 pr-5 pt-1">
            <div class="card p-4 add-product">
                <form action="addProduct1.jsp" method="post" enctype="multipart/form-data">
                    <div class="h4 text-center text-uppercase">Add Product</div>
                    <div class="form-group">
                        <label for="cname">Category</label>
                        <select name="cid" class="form-control" id="cid" required onChange="categoryChangedProduct()">
                        	<option value="all">All</option>
                        	<% while(rs2.next()) { %>
                        		<option  <%if(cid.equalsIgnoreCase(rs2.getString("cid"))){out.print("selected");} %> value="<%=rs2.getString("cid")%>"><%=rs2.getString("cname")%></option>
                        	<%} %>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="scid">Sub Category Name</label>
                         <select name="scid" class="form-control" id="scid" required>
                        	<% while(rs3.next()) { %>
                        		<option  value="<%=rs3.getString("scid")%>"><%=rs3.getString("scname")%></option>
                        	<%} %>
                        </select>
                    </div>
					<div class="form-group">
                        <label for="pname">Product Name</label>
                        <input type="text" name="pname" id="pname" required placeholder="Enter Product Name" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="pname">Product Image</label>
                        <input type="file" name="pimage" id="pimage" required class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="price">Product price</label>
                        <input type="number" name="price" id="price" required class="form-control" placeholder="Product Price">
                    </div>
                    <div class="form-group">
                            <label for="description">Description</label>
                            <textarea name="description" id="description" required placeholder="Enter description" class="form-control"></textarea>
                        </div>
                    <input type="submit" value="Add Product" class="btn btn-primary btn-block">
                </form>
            </div>
        </div>
   <%}catch(Exception e) {
						System.out.print(e);
                    }%>
    </div>
</div>
