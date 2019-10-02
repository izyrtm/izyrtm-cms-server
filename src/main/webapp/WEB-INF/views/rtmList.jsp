<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>RTM Admin</title>

  <!-- Custom fonts for this template -->
  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/main">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">RTM Admin </div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="/main">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">


      <!-- Heading -->
      <div class="sidebar-heading">
        Addons
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item active">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">RTM Screens:</h6>
            <a class="collapse-item" href="/rtmList">List</a>
            <a class="collapse-item" href="/rtmInsert">Register</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">APM Pages:</h6>
            <a class="collapse-item" href="/mdmList">List</a>
            <a class="collapse-item" href="/mdmInsert">Register</a>
          </div>
        </div>
      </li>

 	 <!-- Divider -->
      <hr class="sidebar-divider">
      
      <!-- Heading -->
      <div class="sidebar-heading">
        Opensource
      </div>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="/opensource">
          <i class="fas fa-fw fa-table"></i>
          <span>오픈소스 라이선스</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

    </div>
    <!-- End of Content Wrapper -->
    
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Real Time Message</h1>
          <p class="mb-4">izyMessage에서 생성된 Token을 RTM과 연결하여 이상징후 발생 시, 등록된 대화창에 등록된 사용자들에게 알림기능을 제공합니다. 이곳에서 <a target="_blank" href="https://monbot.hopto.org/"> User Token을 만드세요</a>. </p>

          <!-- table 큰 테두-->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">RTM List</h6>        
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
					<tr >
						<th>No</th>
						<th>Key</th>
						<th>Title</th>
						<th>Token</th>
						<th>Type</th>
						<th>User</th>
						<th>사용여부</th>
						<th>등록일시</th>
					</tr>
                  </thead>
					<tbody>
						<c:forEach var="item" items="${list}">
							<tr onclick="location.href='/detailList/${item.seq_no}'"> 
								<td>${item.seq_no}</td>
								<td>${item.bot_key}</td>
								<td>${item.bot_title}</td>
								<td>${item.bot_token}</td>
								<td>${item.code_value}</td>
								<td>${item.user_list}</td>
								<td>${item.use_yn}</td>
								<td>${item.reg_dt}</td>
							</tr>
						</c:forEach>
					</tbody>
                </table>
              </div>
              <button class="btn btn-md btn-primary text-uppercase" type="button" onclick="location.href='/rtmInsert'" style="margin-top:10px;">등록하기</button>
              <!-- /. table Wrapper-->              
            </div>
            <!-- /.container-fluid -->
           </div> 
           <!--  /. TABLE 큰 테두리  -->        
        </div>
  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


  <!-- Bootstrap core JavaScript-->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>


  <!-- Page level plugins -->
  <script src="/resources/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>


</body>

</html>
