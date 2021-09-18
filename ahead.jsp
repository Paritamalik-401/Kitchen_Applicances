<%@ include file="title.jsp" %>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="admin.jsp">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="cat.jsp">Categories</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="subCat.jsp?cid2=all">Sub Categories</a>
    </li>    
    <li class="nav-item">
      <a class="nav-link" href="addProduct.jsp?cid=all&scid=all">Add Products</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="addPromocode.jsp">Add PromoCodes</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="viewPromocode.jsp">view PromoCodes</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="aproducts.jsp?cid=all&scid=all&pname=all">View Products</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="orders.jsp?status=ordered">Orders</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="return.jsp?status=return">Return Requests</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="return.jsp?status=returned">Returned</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="orders.jsp?status=delivered">History</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="feedbacks.jsp">Feedbacks</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" href="alogout.jsp">Logout</a>
    </li>
  </ul>
</nav>