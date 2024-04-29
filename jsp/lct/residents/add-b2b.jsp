<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> -->
    <meta
      name="keywords"
      content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, nice admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, "
    />
    <meta
      name="description"
      content="Tikaana Admin Dashboard"
    />
    <meta name="robots" content="noindex,nofollow" />
    <title>Ozai Admin Dashboard</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <link
      rel="canonical"
      href="https://www.wrappixel.com/templates/niceadmin/"
    />
    <!-- Favicon icon -->
    <link
      rel="icon"
      type="image/png"
      sizes="16x16"
      href="<%=request.getContextPath() %>/new/assets/images/favicon.png"
    />
    <!-- Custom CSS -->
    <link href="<%=request.getContextPath() %>/new/dist/css/style.min.css" rel="stylesheet" />
	<link
      rel="stylesheet"
      type="text/css"
      href="<%=request.getContextPath() %>/new/assets/libs/select2/dist/css/select2.min.css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
    .form-control {
      border-radius: 50px !important;
      background: #fff !important;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .select2-selection {
      border-radius: 50px !important;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    label {
      font-weight: bold;
    }

</style>
  </head>

  <body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <jsp:include page="/common/preloader.jsp"></jsp:include>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
      <!-- ============================================================== -->
      <!-- Topbar header - style you can find in pages.scss -->
      <!-- ============================================================== -->
      <jsp:include page="/common/lctheader.jsp"></jsp:include>
      <!-- ============================================================== -->
      <!-- End Topbar header -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Left Sidebar - style you can find in sidebar.scss  -->
      <!-- ============================================================== -->
      <jsp:include page="/common/lctsidebar.jsp"></jsp:include>
      <!-- ============================================================== -->
      <!-- End Left Sidebar - style you can find in sidebar.scss  -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Page wrapper  -->
      <!-- ============================================================== -->
      <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb">
          <div class="row">
            <div class="col-5 col-ms-5 col-sm-12 col-12 align-self-center">
              <h4 class="page-title">Add Resident</h4>
            </div>
            <div class="col-7 align-self-center d-none d-lg-block">
              <div class="d-flex align-items-center justify-content-end">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                      <a href="<%=request.getContextPath() %>/lct">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">
                      Add Resident
                    </li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
          <!-- -------------------------------------------------------------- -->
          <!-- Start Page Content -->
          <!-- -------------------------------------------------------------- -->
          <div class="row">
            <div class="col-9 col-md-9 col-sm-12 col-12">
              <div class="card">
                <div class="card-body">
                  <form action="<%=request.getContextPath()%>/lct/addResidentAction"
						id="tenant-form" method="post" modelAttribute="user" enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Name</label> 
								<input type="text" name="name" id="name" required
									class="form-control"
									placeholder="" data-rule="minlen:4"
									data-msg="Please enter your least 4 chars">
								<div class="validate"></div>
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Joining Date</label>
								<input type="date" name="joining_date" id="joining_date" 
									placeholder="" class="form-control" required />
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Mobile</label>
								<input type="text" name="mobile" id="mobile" required
									class="form-control"
									placeholder="" data-rule="minlen:10"
									data-msg="Please enter 10 digits" minlength="10" maxlength="10">
								<div class="validate"></div>
								<p id="mobile-error" class="bg-danger"></p>
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Email</label>
								<input type="email" name="email" id="email"
									class="form-control form-control-a"
									placeholder="" data-rule="minlen:3"
									data-msg="Please enter your least 3 chars">
								<div class="validate"></div>
							</div>
						</div>
						
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Home town</label>
								<input type="text" name="home_town" id="home_town" required
									class="form-control"
									placeholder="" data-rule="minlen:3"
									data-msg="Please enter at least 3 chars">
								<div class="validate"></div>
							</div>
							<p>Room suggestions: 
							<span id="homeSug"></span></p>
						</div>
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Language</label>
								<input type="text" name="language" id="language" required
									class="form-control"
									placeholder="" data-rule="minlen:3"
									data-msg="Please enter at least 3 chars">
								<div class="validate"></div>
							</div>
							<p>Language suggestions: 
							<span id="langSug"></span></p>
						</div>
						
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Property</label>
								<select class="form-control form-select"
                    				style="width: 100%; height: 36px;"
					                data-placeholder="Choose a Property" name="property_id"
									id="select2-theme" required>
									<option value="">Property</option>
									<c:forEach items="${pgs }" var="pg">
										<option value="${pg.id }">${pg.name } | ${pg.location } | ${pg.city }</option>
									</c:forEach>
								</select>
								<div class="validate"></div>
							</div>
						</div>
						<%-- <input type="hidden" name="entry_by" value="${AdminUser.name }" /> --%>
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Room</label>
								<select name="room_id" id="room_id" required
									class="form-control"
									data-msg="Please select option">
								</select>
								<div class="validate"></div>
								<span class="text-danger" id="room_error"></span>
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Bed</label>
								<select name="bed_id" id="bed_id" required
									class="form-control"
									data-msg="Please select option">
								</select>
								<div class="validate"></div>
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Sharing</label>
								<select name="sharing" id="sharing" required
									class="form-control"
									data-msg="Please select option">
									<option value="">Select sharing option</option>
									<option value="1">Single</option>
									<option value="2">Double</option>
									<option value="3">Three</option>
									<option value="4">Four</option>
								</select>
								<div class="validate"></div>
								<p id="sharing-error" class="bg-light-danger text-danger"></p>
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Employ ID</label>
								<input type="text" name="employ_id" id="employ_id" required
									class="form-control"
									placeholder="" data-rule="minlen:3"
									data-msg="Please enter at least 3 chars">
								<div class="validate"></div>
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Work Site</label>
								<input type="text" name="work_site" id="work_site" required
									class="form-control"
									placeholder="" data-rule="minlen:3"
									data-msg="Please enter at least 3 chars">
								<div class="validate"></div>
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Contract</label>
								<input type="text" name="contract" id="contract" required
									class="form-control"
									placeholder="" data-rule="minlen:3"
									data-msg="Please enter at least 3 chars">
								<div class="validate"></div>
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">DOB</label>
								<input type="date" name="dob" id="dob" required
									class="form-control" />
								<div class="validate"></div>
							</div>
						</div>
						
						<div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Food preferences</label>
								<input type="text" name="food_preferences" id="food_preferences" required
									class="form-control"
									placeholder="" data-rule="minlen:3"
									data-msg="Please enter at least 3 chars">
								<div class="validate"></div>
							</div>
						</div>
						<!-- <div class="col-md-6 mb-3">
							<div class="form-group">
								<label class="control-label">Aadhar Card</label>
								<div class="position-relative form-group">
									<label for="exampleFile" class="">Select File Attachment</label>
									<input name="id_file" id="id_file" type="file" accept="image/*" class="form-control" onchange="readURL(this)" required />
	                                      <small class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
                                 </div>
                       		</div>
                         </div> -->

						<div class="col-md-12 text-center">
							<button type="submit" class="btn btn-info" id="send">Submit</button>
						</div>
					</div>
				</form>
                </div>
              </div>
            </div>
            
          </div>
          <!-- -------------------------------------------------------------- -->
          <!-- End PAge Content -->
          <!-- -------------------------------------------------------------- -->
        </div>
        <button type="button" class="btn btn-light-success
        	text-success font-weight-medium
            btn-lg px-4 fs-4 font-weight-medium" style="display: none;"
            data-bs-toggle="modal" id="onSuccess" 
            data-bs-target="#al-success-alert">
           	Success Alert
         </button>
         
        <div
            class="modal fade"
            id="al-success-alert"
            tabindex="-1"
            aria-labelledby="vertical-center-modal"
            aria-hidden="true"
          >
            <div class="modal-dialog modal-sm">
              <div
                class="
                  modal-content modal-filled
                  bg-light-success
                  text-success
                "
              >
                <div class="modal-body p-4">
                  <div class="text-center text-success">
                    <i
                      data-feather="check-circle"
                      class="fill-white feather-lg"
                    ></i>
                    <h4 class="mt-2 text-success">Thank You!</h4>
                    <p class="mt-3 text-success-50">
                      Resident has been added.
                    </p>
                    <p>Password : ${password }</p>
                    <button
                      type="button"
                      class="btn btn-light my-2"
                      data-bs-dismiss="modal"
                    >
                      Close
                    </button>
                  </div>
                </div>
              </div>
              <!-- /.modal-content -->
            </div>
          </div>
          
          <button type="button" class="btn btn-light-warning text-warning
              font-weight-medium btn-lg
              px-4 fs-4 font-weight-medium" id="errorMsg"
              data-bs-toggle="modal" style="display: none;"
              data-bs-target="#al-warning-alert">
             Warning Alert
           </button>

           <!-- Vertically centered modal -->
           <div class="modal fade" id="al-warning-alert"
             tabindex="-1" aria-labelledby="vertical-center-modal"
             aria-hidden="true">
                      <div class="modal-dialog modal-sm">
                        <div
                          class="modal-content modal-filled bg-light-warning"
                        >
                          <div class="modal-body p-4">
                            <div class="text-center text-warning">
                              <i
                                data-feather="alert-octagon"
                                class="fill-white feather-lg"
                              ></i>
                              <h4 class="mt-2">Sorry</h4>
                              <p class="mt-3">
                                Submission failed, Please try again later.
                              </p>
                              <button
                                type="button"
                                class="btn btn-light my-2"
                                data-bs-dismiss="modal"
                              >
                                Close
                              </button>
                            </div>
                          </div>
                        </div>
                        <!-- /.modal-content -->
                      </div>
                    </div>
                    
                    <button
                      type="button"
                      class="
                        btn btn-light-danger
                        text-danger
                        font-weight-medium
                        btn-lg
                        px-4
                        fs-4
                        font-weight-medium" style="display: none;"
                      data-bs-toggle="modal" id="emptyMsg"
                      data-bs-target="#al-danger-alert"
                    >
                      Danger Alert
                    </button>

                    <!-- Vertically centered modal -->
                    <div
                      class="modal fade"
                      id="al-danger-alert"
                      tabindex="-1"
                      aria-labelledby="vertical-center-modal"
                      aria-hidden="true"
                    >
                      <div class="modal-dialog modal-sm">
                        <div class="modal-content modal-filled bg-light-danger">
                          <div class="modal-body p-4">
                            <div class="text-center text-danger">
                              <i
                                data-feather="x-octagon"
                                class="fill-white feather-lg"
                              ></i>
                              <h4 class="mt-2">Oh snap!</h4>
                              <p class="mt-3">
                                Please fill in all the fields to submit.
                              </p>
                              <button
                                type="button"
                                class="btn btn-light my-2"
                                data-bs-dismiss="modal"
                              >
                                Close
                              </button>
                            </div>
                          </div>
                        </div>
                        <!-- /.modal-content -->
                      </div>
                    </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <footer class="footer text-center">
          All Rights Reserved by Ozai Living Private Limited.
        </footer>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
      </div>
      <!-- ============================================================== -->
      <!-- End Page wrapper  -->
      <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- customizer Panel -->
    <!-- ============================================================== -->
    
    <div class="chat-windows"></div>
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="<%=request.getContextPath() %>/new/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<%=request.getContextPath() %>/new/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- apps -->
    <script src="<%=request.getContextPath() %>/new/dist/js/app.min.js"></script>
    <script src="<%=request.getContextPath() %>/new/dist/js/app.init.js"></script>
    <script src="<%=request.getContextPath() %>/new/dist/js/app-style-switcher.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="<%=request.getContextPath() %>/new/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/new/assets/libs/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!--Wave Effects -->
    <script src="<%=request.getContextPath() %>/new/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="<%=request.getContextPath() %>/new/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="<%=request.getContextPath() %>/new/dist/js/feather.min.js"></script>
    <script src="<%=request.getContextPath() %>/new/dist/js/custom.min.js"></script>
     <script src="<%=request.getContextPath() %>/new/assets/libs/select2/dist/js/select2.full.min.js"></script>
    <script src="<%=request.getContextPath() %>/new/assets/libs/select2/dist/js/select2.min.js"></script>
    <script src="<%=request.getContextPath() %>/new/dist/js/pages/forms/select2/select2.init.js"></script>
    <c:if test="${success eq true }">
    	<script>
        	$('document').ready(function(){
        		$('#onSuccess').click();
        	});
        </script>
    </c:if>
    <c:if test="${success eq false }">
	     <script>
	     	$('document').ready(function(){
	     		$('#errorMsg').click();
	     	});
	     </script>
    </c:if>
    <script type="text/javascript">
		
		function readURL(input) {

			var image=input;
			var image_obj = $('#id_file');
			
			if((image.files[0].size / 1024).toFixed(0) > 50*1024) {
				
				alert("Attachment must be less or equal to 50MB");
				image_obj.replaceWith(image_obj.val('').clone(true));
				return;
			}
		}
		
		$('document').ready(function() {	
			
			$('#home_town').change(function() {
				$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getRoomsListByHomeTown/"+$('#home_town').val()+"",
					timeout : 100000,
					beforeSend:function(){
						$(".loading").show();
					},
					success : function(data) {
						
						console.log("SUCCESS: ", data);
						
						if(data){
							$('#homeSug').empty();
							$('#homeSug').html(data);
						} else {
							$("#send").show();
						}
						
					},
					error : function(e) {
						console.log("ERROR: ", e);
						bootbox.alert(e);
						$("#send").button('reset');
					},
					done : function(e) {
						console.log("DONE");
						$("#send").button('reset');
						
					}
				});
			});
			
			$('#language').change(function() {
				$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getRoomsListByLanguage/"+$('#language').val()+"",
					timeout : 100000,
					beforeSend:function(){
						$(".loading").show();
					},
					success : function(data) {
						
						console.log("SUCCESS: ", data);
						
						if(data){
							$('#langSug').empty();
							$('#langSug').html(data);
						} else {
							$("#send").show();
						}
						
					},
					error : function(e) {
						console.log("ERROR: ", e);
						bootbox.alert(e);
						$("#send").button('reset');
					},
					done : function(e) {
						console.log("DONE");
						$("#send").button('reset');
						
					}
				});
			});
			
			$('#select2-theme').change(function() {
				$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getRoomsList/"+$('#select2-theme').val()+"",
					timeout : 100000,
					beforeSend:function(){
						$(".loading").show();
					},
					success : function(data) {
						
						console.log("SUCCESS: ", data);
						
						if(data){
							$('#room_id').empty();
							$('#room_id').html(data);
						} else {
							$("#send").show();
						}
						
					},
					error : function(e) {
						console.log("ERROR: ", e);
						bootbox.alert(e);
						$("#send").button('reset');
					},
					done : function(e) {
						console.log("DONE");
						$("#send").button('reset');
						
					}
				});
			});
			
			$('#room_id').change(function() {
				$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getBedsList/"+$('#room_id').val()+"",
					timeout : 100000,
					beforeSend:function(){
						$(".loading").show();
					},
					success : function(data) {
						
						console.log("SUCCESS: ", data);
						
						if(data=="No beds found"){
							$('#room_error').html("*Choose another room please.");
							$('#bed_id').empty();
						} else {
							$('#room_error').empty();
							$('#bed_id').empty();
							$('#bed_id').html(data);
						}
						
					},
					error : function(e) {
						console.log("ERROR: ", e);
						bootbox.alert(e);
						$("#send").button('reset');
					},
					done : function(e) {
						console.log("DONE");
						$("#send").button('reset');
						
					}
				});
			});
			
			
			$('#mobile').change(function() {
				$.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/CheckUserMobile",
					data : {"mobile" : $('#mobile').val()},
					//contentType: "text/json; charset=utf-8",
		            //dataType: "json",
					timeout : 100000,
					beforeSend:function(){
						$(".loading").show();
					},
					success : function(data) {
						
						console.log("SUCCESS: ", data);
						
						if(data=='success'){
							$('#mobile').empty();
							$('#mobile-error').show();
							$('#mobile-error').html("Mobile number exist already");
							$("#send").hide();
						} else {
							$("#send").show();
							$('#mobile-error').hide();
						}
						$("#send").button('reset');
					},
					error : function(e) {
						console.log("ERROR: ", e);
						bootbox.alert(e);
						$("#send").button('reset');
					},
					done : function(e) {
						console.log("DONE");
						$("#send").button('reset');
						
					}
				});
			});
			
			
			$('#tenant-form').validate({
				errorElement : 'div',
				errorClass : 'error-msg',
				focusInvalid : true,
				rules : {
					id_file :{
						accept:"image/*"
					} 
				},
				messages : {
					id_file : {
						accept:"Please select a valid file"
					}
				},
				submitHandler : function(form) {
					$('#submitProcess').show();
					$('#tenant-form button[type=submit]').prop("disabled", "disabled");		
					form.submit();
				}
			});
		});
	</script>
    <script>
    	$('document').ready(function(){
    		$('.sidebartoggler').toggle();
    	});
      $(function () {
        "use strict";
        $("#main-wrapper").AdminSettings({
          Theme: true, // this can be true or false ( true means dark and false means light ),
          Layout: "horizontal",
          LogoBg: "skin5", // You can change the Value to be skin1/skin2/skin3/skin4/skin5/skin6
          NavbarBg: "skin5", // You can change the Value to be skin1/skin2/skin3/skin4/skin5/skin6
          SidebarType: "overlay", // You can change it full / mini-sidebar / iconbar / overlay
          SidebarColor: "skin5", // You can change the Value to be skin1/skin2/skin3/skin4/skin5/skin6
          SidebarPosition: false, // it can be true / false ( true means Fixed and false means absolute )
          HeaderPosition: false, // it can be true / false ( true means Fixed and false means absolute )
          BoxedLayout: false, // it can be true / false ( true means Boxed and false means Fluid )
        });
      });
    </script>
  </body>
</html>