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

<body id="page-top" onload="document.tableSet()">

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
          <h1 class="h3 mb-2 text-gray-800">Monitering Dashboard Mapping</h1>
          <p class="mb-4">Prometheus(프로메테우스) / Grafana에서 생성한 모니터링 대쉬보드를 RTM과 연결하여 상황창에서 실시간으로 받아보실 수 있습니다. 이곳에서 <a target="_blank" href="https://monbot.hopto.org/"> Dashboard를 구성하세요</a>. </p>

          <!-- table 큰 테두-->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">MDM List</h6>      
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="margin-top:20px;">
                  <thead>
					<tr >
						<th>No</th>
						<th>Key</th>
						<th>DashBoard Id</th>
						<th>DashBoard Key</th>
						<th>Org Id</th>
						<th>Pnael Id</th>
						<th>RTM Key</th>						
						<th>사용여부</th>
						<th>등록일시</th>					
					</tr>
                  </thead>
					<tbody>
						<c:forEach var="item" items="${list}">
							<tr onclick="location.href='/mdmDetailList/${item.seq_no}'"> 
								<td>${item.seq_no}</td>
								<td>${item.db_key}</td>
								<td>${item.db_id}</td>
								<td>${item.db_title}</td>
								<td>${item.db_org_id}</td>
								<td>${item.db_panel_id}</td>
								<td>${item.bot_key}</td>
								<td>${item.use_yn}</td>
								<td>${item.reg_dt}</td>
							</tr>
						</c:forEach>
					</tbody>
                </table>
                <button class="btn btn-md btn-primary text-uppercase" type="button" onclick="location.href='/mdmInsert'" style="margin-top:10px;">등록하기</button>
              </div>
              <!-- /. table Wrapper-->              
            </div>
            <!-- /.container-fluid -->
           </div> 
           <!--  /. TABLE 큰 테두리  -->        
        </div>
  </div>
  <!-- End of Page Wrapper -->
  
  <!-- Begin datail List table -->
  <script type="text/javascript">
  
 function tableSet() {
	 var theadHtml = "";
	 
	 theadHtml += '<tr>';
	 theadHtml += '<th>No</th>';
	 theadHtml += '<th>Key</th>';
	 theadHtml += '<th>DashBoard Id</th>;
	 theadHtml += '<th>DashBoard Key</th>';
	 theadHtml += '<th>Org Id</th>';
	 theadHtml += '</tr>';
	 
	 $('#theadDataList').html(theadHtml);
	 	 
 }
  
  function searchData() {
	$().postAjax("/mdmList", function (data) {
		var dataList = data.resultInfo;
		// refreshPage(dataList);
		
		if ( ! dataList || dataList.length == 0 ) {
			$('#tbodyDataList').html('<tr><td colspan="13">여길 타긴 하니?.</td></tr>');
			return;
		}
		
      var use_yn;
      var tbodyHtml = "";
      
      for ( var i = 0; i < dataList.length; i++ ) {
        use_yn = "미사용";
        if(dataList[i].useYn == 'Y') {
          use_yn = "사용";
        }
        
        tbodyHtml += '<c:forEach var="item" items="${list}">'
        tbodyHtml += "<tr onClick=\"jlocation.href='/detailList/${item.seq_no}'\">";
        tbodyHtml += "<td>${item.seq_no}</td>";
        tbodyHtml += "<td>${item.db_key}</td>";
        tbodyHtml += "<td>${item.db_id}</td>";
        tbodyHtml += "<td>${item.db_title}</td>";
        tbodyHtml += "<td>${item.db_org_id}</td>";
        tbodyHtml += "<td>${item.db_panel_id}</td>";
        tbodyHtml += "<td>${item.bot_key}</td>";
        tbodyHtml += "<td>${item.use_yn}</td>";
        tbodyHtml += "<td>${item.reg_dt}</td>";	
        tbodyHtml += "</tr>";
        tbodyHtml += '</c:forEach>'		
        
      }
		$('#tbodyDataList').html(tbodyHtml);
    });
  }

  $(document).ready(function() { //페이지가 로딩되면 바로 실행한다.
	  tableSet();
	  searchData();
		$('#btnNew').click(function() {
		 $().getHtml("/main", function(data) {
			$('div#contents-main').html(data);
			}	);
		});
	});
</script>
  <!-- /. End of datail List table -->

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