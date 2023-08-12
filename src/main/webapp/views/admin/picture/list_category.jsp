<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Category</title>
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
								<a href="addCategory" class="btn btn-primany">Thêm mới</a>
								<table class="table" id="myTable">
									<thead>
										<tr>
											<th>Mã loại SP</th>
											<th>Tên loại SP</th>
											<th>Mô tả</th>
											<th>Chức năng</th>
											
										</tr>
									</thead>
									<tbody>
										<c:forEach var="cate" items="${requestScope.categories }">
											<tr>
												<td>${cate.category_id}</td>
												<td>${cate.category_name}</td>
												<td>${cate.parentCategory}</td>
												<td>
												<a href="/ClothingStore01/updateCategory?category_id=${cate.category_id}">Sửa</a>
												<a href="/ClothingStore01/deleteCategory?category_id=${cate.category_id}" >Xóa</a>
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
	function daleteCate(id){
		let ans = confirm("bạn có muốn xóa không?");
		if(ans){
			window.location = "deleteCategory?id="+id;
		}
	}

</script>


	<!-- ========== script start =========== -->
		<%@include file="layout/script.jsp" %>
      <!-- ========== script end =========== -->
  </body>
</html>