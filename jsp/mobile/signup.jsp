<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta
      name="keywords"
      content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, nice admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, "
    />
    <meta
      name="description"
      content="Nice is powerful and clean admin dashboard template, inpired from Google's Material Design"
    />
    <meta name="robots" content="noindex,nofollow" />
    <title>SignUp | Tikaana</title>
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
    <!-- This Page CSS -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body style="background: #FFF;">
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
      
      <!-- ============================================================== -->
      <!-- End Topbar header -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Left Sidebar - style you can find in sidebar.scss  -->
      <!-- ============================================================== -->
      
      <!-- ============================================================== -->
      <!-- End Left Sidebar - style you can find in sidebar.scss  -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Page wrapper  -->
      <!-- ============================================================== -->
      <div class="row auth-wrapper gx-0">
        	<div
          class="
            col-lg-8 col-xl-9
            d-flex
            align-items-center
            justify-content-center
          "
        >
          <div class="row justify-content-center w-100 mt-4 mt-lg-0">
            <div class="col-lg-6 col-xl-3 col-md-7">
	        	
				<div class="card" id="loginform">
					<div class="text-center">
           				<h1 style="line-height: 60px; font-weight: 700; color: black; font-size: 44px;">SIGNUP</h1>
           			</div> 
					<div class="card-body">
						<p>Already registered? <a href="<%=request.getContextPath() %>/mobile/signin">Signin</a> here.
						<c:if test="${empty User }">
							<form action="<%=request.getContextPath() %>/doUserRegister" method="post" role="form"
								id="signup-form" class="php-email-form" modelAttribute="user">
								<div class="row">
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<input type="text" name="name" id="name" required
												class="form-control form-control-lg form-control-a"
												placeholder="Name" minlength="4" nospace="true" />
											<div class="validate"></div>
										</div>
									</div>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<input type="text" name="mobile" id="mobile" required
												class="form-control form-control-lg form-control-a"
												placeholder="Mobile number" minlength="10" nospace="true"
												maxlength="10" />
											<div class="validate"></div>
										</div>
									</div>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<input type="email" name="email" id="email" required
												class="form-control form-control-lg form-control-a"
												placeholder="Email" minlength="4" />
											<div class="validate"></div>
										</div>
									</div>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="register-form-repassword">Country:</label>
											<select id="country" name="country" 
												required class="form-control form-control-lg form-control-a"></select>
										</div>
									</div>

									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="register-form-repassword">State:</label>
											<select id="state" name="state" 
												required class="form-control form-control-lg form-control-a"></select>
										</div>
									</div>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<input type="text" name="city" id="city" required
												class="form-control form-control-lg form-control-a"
												placeholder="City" minlength="3" />
											<div class="validate"></div>
										</div>
									</div>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<input type="text" name="company" id="company" required
												class="form-control form-control-lg form-control-a"
												placeholder="Company" minlength="3" nospace="true" />
											<div class="validate"></div>
										</div>
									</div>

									<div class="col-md-12 text-center">
										<button type="submit" class="btn btn-dark" id="send">SIGN UP</button>
									</div>
								</div>
							</form>
							<div class="col-md-12 mb-3">
								<div class="sent-message" style="display: none;">
									<h4 class="loading">Loading.....</h4>
									<div class="">Success, You will receive your credentials from the property super, Click below if you already have credentials.
										<div class=" col-xs-12">
											<a href="<%=request.getContextPath() %>/mobile"
												class="btn btn-sq-bg btn-info btn-block"><i class="fa fa-unlock fa-3x"></i><br/>Login</a>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${not empty User }">
							<div class="col-md-12 text-center">
								<a href="<%=request.getContextPath() %>/mobile" class="btn btn-a" id="send">Home</a>
							</div>
						</c:if>
						
					</div>
				</div>
        	</div>
       	</div>
      </div>
      <!-- -------------------------------------------------------------- -->
      <!-- Login box.scss -->
      <!-- -------------------------------------------------------------- -->
    </div>
  </div>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- customizer Panel -->
    <!-- ============================================================== -->
    
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="<%=request.getContextPath() %>/new/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<%=request.getContextPath() %>/new/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- apps -->
    <script src="<%=request.getContextPath() %>/new/dist/js/app.min.js"></script>
    <script src="<%=request.getContextPath() %>/new/dist/js/app.init.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="<%=request.getContextPath() %>/new/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/new/assets/libs/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!--Wave Effects -->
    <script src="<%=request.getContextPath() %>/new/dist/js/waves.js"></script>
    <!--Custom JavaScript -->
    <script src="<%=request.getContextPath() %>/new/dist/js/feather.min.js"></script>
    <script src="<%=request.getContextPath() %>/new/dist/js/custom.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/country-state.js"></script>
    <!-- This Page JS -->
    <script src="<%=request.getContextPath() %>/new/assets/extra-libs/prism/prism.js"></script>
	<script>
		$('document').ready(function(){			
			populateCountries("country", "state");
			$('#country option:contains("India")').prop('selected',true);
			populateStates("country", "state");
		});
	</script>
	<script>
		$('document').ready(function(){
			
			$('#mobile').change(function() {
				$.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/mobile/CheckUserMobile",
					data : {"mobile" : $('#mobile').val()},
					timeout : 100000,
					beforeSend:function(){
						$('#send').prop('disabled',false);
					},
					success : function(data) {
						
						console.log("SUCCESS: ", data);
						
						if(data=='success'){
							$('#mobile').empty();
							$('#mobileExist').html("Mobile number exist already");
							$('#send').prop('disabled',true);
						} else {
							$('#send').prop('disabled',false);
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
		});
	</script>
</body>

</html>