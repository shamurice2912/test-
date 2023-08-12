<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Product</title>
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
    

    
    <title>Danh sách sản phẩm</title>

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
								<h5 class="card-title">Danh sách loại sản phẩm</h5>
								<a href="addProduct" class="btn btn-primany">Thêm mới</a>
								<table class="table" id="myTable">
									<thead>
										<tr>
											<th>product_id</th>
											<th>brand_id</th>
											<th>product_name</th>
											<th>description</th>
											<th>price</th>
											<th>price_more</th>
											<th>promotion</th>
											<th>image_url</th>
											<th>size</th>
											<th>created_at</th>
											<th>Chức năng</th>
											
										</tr>
									</thead>
									<tbody>
										<c:forEach var="pro" items="${requestScope.products }">
											<tr>
												<td>${pro.product_id}</td>
												<td>${pro.brand_id}</td>
												<td>${pro.product_name}</td>
												<td>${pro.description}</td>
												<td>${pro.price}</td>
												<td>${pro.price_more}</td>
												<td>${pro.promotion}</td>
												<td><img src="${pageContext.request.contextPath}${pro.image_url}" height="50" width="50"></td>
												<td>${pro.size}</td>
												<td>${pro.created_at}</td>
												<td>
												<a href="/ClothingStore01/updateProduct?product_id=${pro.product_id}">Sửa</a>
												<a href="/ClothingStore01/deleteProduct?product_id=${pro.product_id}" >Xóa</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>								
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
	<script>



	<!-- ========== script start =========== -->
		<%@include file="layout/script.jsp" %>
      <!-- ========== script end =========== -->
  </body>
</html>