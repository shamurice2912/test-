<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nhật orderitem</title>
 <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
        <c:url var="url" value="/views/admin"></c:url>
    
    <link
      rel="shortcut icon"
      href="${url}/assets/images/favicon.svg"
      type="image/x-icon"
    />
    <title>Cập nhật orderitem</title>

    <!-- ========== All CSS files linkup ========= -->
    <link rel="stylesheet" href="${url}/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${url}/assets/css/lineicons.css" />
    <link rel="stylesheet" href="${url}/assets/css/materialdesignicons.min.css" />
    <link rel="stylesheet" href="${url}/assets/css/fullcalendar.css" />
    <link rel="stylesheet" href="${url}/assets/css/fullcalendar.css" />
    <link rel="stylesheet" href="${url}/assets/css/main.css" />
  </head>
  <body>
    <!-- ======== sidebar-nav start =========== -->
    <%@include file="layout/sidebar.jsp" %>
    <!-- ======== sidebar-nav end =========== -->

    <!-- ======== main-wrapper start =========== -->
    <main class="main-wrapper">
	 <!-- ========== header start ========== -->
	 <%@include file="layout/header.jsp" %>
      <!-- ========== header end ========== -->

      <!-- ========== section start ========== -->
    			<section class="section dashboard">
			<div class="row">				
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<form action="/ClothingStore01/updateOrderItem" method="post">
								<h3 class="mt-3">Cập nhật orderitem</h3>
								<c:if test="${requestScope.orderitem != null }">
									<c:set var="orderitem" value="${resquestScope.orderitem }"></c:set>
								
								</c:if>
								
								
									<div class="mt-3">
										<label>order_id</label>
										<input type="number" name="order_id" value="${orderitem.order_id}" readonly="readonly" class="form-control" ></input>
									</div>
									<div class="mt-3">
										<label>product_id</label>
										<input type="number" name="product_id" value="${orderitem.product_id }" readonly="readonly" class="form-control" ></input>
									</div>
									<div class="mt-3">
										<label>colors_id</label>
										<input type="text" name="colors_id" value="${orderitem.colors_id }" readonly="readonly" class="form-control" ></input>
									</div>
									<div class="mt-3">
										<label>quantity</label>
										<input type="number" name="quantity" value="${orderitem.quantity }" readonly="readonly" class="form-control" ></input>
									</div>
									<div class="mt-3">
										<label>status</label>
										<input type="text" name="status" value="${orderitem.status }" class="form-control" ></input>
									</div>
									<div class="mt-3">
										<input type="submit" value="Cập nhập" class="btn btn-primary"></input>
									</div>
								</form>
							</div>
						</div>
					</div>			
			</div>
		</section>
      <!-- ========== section end ========== -->

      <!-- ========== footer start =========== -->
		<%@include file="layout/footer.jsp" %>
      <!-- ========== footer end =========== -->
    </main>
    <!-- ======== main-wrapper end =========== -->

    <!-- ========= All Javascript files linkup ======== -->
    <script src="${url}/assets/js/bootstrap.bundle.min.js"></script>
    <script src="${url}/assets/js/Chart.min.js"></script>
    <script src="${url}/assets/js/dynamic-pie-chart.js"></script>
    <script src="${url}/assets/js/moment.min.js"></script>
    <script src="${url}/assets/js/fullcalendar.js"></script>
    <script src="${url}/assets/js/jvectormap.min.js"></script>
    <script src="${url}/assets/js/world-merc.js"></script>
    <script src="${url}/assets/js/polyfill.js"></script>
    <script src="${url}/assets/js/main.js"></script>

	  <!-- ========== script start =========== -->
		<%@include file="layout/script.jsp" %>
      <!-- ========== script end =========== -->
  </body>
</html>