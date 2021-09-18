<%@ include file="chead.jsp" %>
<div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="card p-3 mt-3">
                 <form action="addmoney1.jsp">
                        <div class="h5 text-center"></div>
                        <div class="form-group">
                        
                            <label for="money">Enter Money:</label>
                            <input type="number" name="money" id="money" required placeholder="Enter money...."
                                class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label for="cardnumber">Card Number:</label>
                            <input type="number" name="cardnumber" id="cardnumber"  placeholder="Enter card Details..." required class="form-control" maxlength="10" >
                        </div>
                        <div class="form-group">
                            <label for="namecard">Name On Card:</label>
                            <input type="text" name="namecard" id="namecard"     placeholder="Enter card Name..." required class="form-control">
                        </div>
                        <div class="row">
                        <div class="form-group col-md-6">
                            <label for="month">Expiry Date:</label>
                            <input type="YYYY-MM" name="datee" id="datee" required  placeholder="MM/YY" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="cvv">CVV:</label>
                            <input type="number" name="cvv" id="cvv" maxlength="3" required placeholder="Enter cvv..." class="form-control"  maxlength="3">
                        </div>
                        </div>
                      
                        <input type="submit" value="Add "  class="btn btn-primary btn-block">
                   </form>  
                </div>
            </div>
           
            <div class="col-md-4"></div>
        </div>
    </div>