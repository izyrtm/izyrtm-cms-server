<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<!-- Model -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">
	 <div class="row" style="width:700;">
		        <!-- Begin Page Content -->
        <div class="modal-content">
        	<div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal">&times;</button>    	
        	</div>
        
	        <div class="modal-body">
	        <!-- table 큰 테두-->
	          <div class="card shadow mb-4">
	            <div class="card-header py-3">
	              <h6 class="m-0 font-weight-bold text-primary">RTM List</h6>        
	            </div>
	            <div class="card-body">
	              <div class="table-responsive">
	                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	                  <thead>
						<tr>
							<th>Type</th>
							<th>RTM Key</th>
							<th>Title</th>
							<th>사용여부</th>
						</tr>
	                  </thead>
						<tbody>
							<c:forEach var="item" items="${rtmList}">
								<tr> 
									<td>${item.code_value}</td>
									<td>${item.bot_key}</td>
									<td>${item.bot_title}</td>
									<td>${item.use_yn}</td>
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
         </div>
       </div>	
	</div>