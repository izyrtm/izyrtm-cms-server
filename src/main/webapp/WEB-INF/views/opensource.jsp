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
    <!-- End of Content Wrapper -->
    <html lang="ko"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/><title>Open Source Software Notice</title><style>body {margin: 0;color: #888;font: 13px/1.25 sans-serif;-webkit-text-size-adjust: 100%;}h1 {font-size: 1.25em;}h1, h2, h3, h4 {color: #000;}#titleS {padding: 1.25em 1em 1em; margin: 0;background:#000;color:#5d5d5d; position: relative;}#noticeS,#oss,#licensesS div {padding: 10px;}dt {font-size: 14px;font-weight: bold;color: #000;margin-top: 1em;}dd {margin-left: 20px;}pre, dd a {word-wrap: break-word;}#ossS i {color: #333;}#ossS,#licensesS div {border-top: 1px solid #ccc;padding-top: 1em;}#licensesS div { display: block; white-space: pre; word-wrap: break-word;}#licensesS p {fmargin: .75em 0;}.license a {text-decoration: none; color:#999;}#createHtml {	position: absolute; top: 50%; transform: translateY(-50%);-webkit-transform: translateY(-50%);-ms-transform: translateY(-50%);	background-color:#44c767;	border-radius:2em;	border:1px solid #18ab29;	display:inline-block;	cursor:pointer;	color:#fff;	font-size:14px;	padding:.5em .75em;	text-decoration:none;	text-shadow:0px 1px 0px #2f6627;	margin-left: 1em;}#createHtml:hover {	background-color:#5cbf2a;}</style></head><body><h1 id="titleS">Open Source Software Notice</h1><div id="noticeS"><p>This product contains the following Open Source Software with licenses and notices below.</div><div id="ossS"><dl><dt>startbootstrap-sb-admin-2</dt><dd><a href=></a></dd><dd>Copyright (c) Copyright (c) 2013-2019 Blackrock Digital LLC</dd><dd>MIT License</dd><dt>izyrtm</dt><dd><a href=></a></dd><dd>Copyright (c) Copyright (c) 2019 izyrtm</dd><dd>MIT License</dd></dl></div><br><br><div id="licensesS"><hr color="d9d9d9"><dl><dd><h1>The MIT License</h1>
<tt>Copyright (c) &lt;year&gt; &lt;copyright holders&gt;</tt><br><br>
<a name="feeForSoftwareLicense"><a name="feeForDistributionLicense">Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the &quot;Software&quot;), to deal in the Software without restriction,</a> <a name="copyRestrictionLicense"><a name="modificationRestrictionLicense">including without limitation the rights to use, copy,</a> modify, merge,</a> publish, distribute, sublicense, and/or sell copies of the Software,</a> and to permit persons to whom the Software is furnished to do so, subject to the following conditions:<br><br>
The above copyright notice and <a name="includeLicenseRestrictionLicense"><a name="includeAddedCodeRestrictionLicense"><a name="includeLicenseRestrictionLicense">this permission notice shall be included in all copies or substantial portions of the Software.</a></a></a><br><br>
<a name="disclaimerRestrictionLicense">THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.</a> <a name="excludeDamagesRestrictionLicense">IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.</a><br></dd></dl></div></div></body></html>

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

