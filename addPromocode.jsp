<%@ include file="ahead.jsp" %>
<div class="container">
    <div class="row">
    <div class="col-md-3"></div>
        <div class="col-md-6 mt-5">
            <div class="card p-4 add-product">
                <form action="addPromocode1.jsp" method="post" enctype="multipart/form-data">
                    <div class="h4 text-center text-uppercase">Add Promocode</div>
                    <div class="form-group">
                        <label for="pic">Pic:</label>
                        <input type="file" name="pic" id="pic" required class="form-control">
                    </div>
                    <div class="form-group">
                            <label for="description">Description</label>
                            <textarea name="description" id="description" required placeholder="Enter description" class="form-control"></textarea>
                        </div>
                    <input type="submit" value="Add" class="btn btn-primary btn-block">
                </form>
            </div>
        </div>
