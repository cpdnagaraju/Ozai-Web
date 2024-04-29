<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Contact | Tikaana</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="<%=request.getContextPath()%>/assets/img/favicon.jpeg"
	rel="icon">
<link
	href="<%=request.getContextPath()%>/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="<%=request.getContextPath()%>/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/vendor/ionicons/css/ionicons.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/vendor/animate.css/animate.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="<%=request.getContextPath()%>/assets/css/style.css"
	rel="stylesheet">

<!-- =======================================================
  * Template Name: EstateAgency - v2.1.0
  * Template URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Property Search Section ======= -->
	<jsp:include page="/common/header.jsp"></jsp:include>
	<!-- End Header/Navbar -->

	<main id="main"> <!-- ======= Intro Single ======= -->
	<section class="intro-single">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-8">
					<div class="title-single-box">
						<h1 class="title-single">Contact US</h1>
						<!-- <span class="color-text-a">Aut voluptas consequatur unde
							sed omnis ex placeat quis eos. Aut natus officia corrupti qui
							autem fugit consectetur quo. Et ipsum eveniet laboriosam voluptas
							beatae possimus qui ducimus. Et voluptatem deleniti. Voluptatum
							voluptatibus amet. Et esse sed omnis inventore hic culpa.</span> -->
					</div>
				</div>
				<div class="col-md-12 col-lg-4">
					<nav aria-label="breadcrumb"
						class="breadcrumb-box d-flex justify-content-lg-end">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">
								Contact</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Intro Single--> <!-- ======= Contact Single ======= -->
	<section class="contact">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="contact-map box">
						<div id="map" class="contact-map">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3806.2537991684035!2d78.35912381487717!3d17.44756248804272!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc5a6c8f8afa4198f!2sTikaana%20coliving!5e0!3m2!1sen!2sin!4v1636369613445!5m2!1sen!2sin"
								width="100%" height="450" frameborder="0" style="border: 0"
								allowfullscreen></iframe>
						</div>
					</div>
				</div>
				<div class="col-sm-12 section-t8">
					<div class="row">
						<div class="col-md-7">
							<form action="#" method="post" role="form"
								id="contact-form" class="php-email-form">
								<div class="row">
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<input type="text" name="name" required
												class="form-control form-control-lg form-control-a"
												placeholder="Your Name" minlength="4"
												data-msg="Please enter at least 4 chars">
											<div class="validate"></div>
										</div>
									</div>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<input name="email" type="email" required
												class="form-control form-control-lg form-control-a"
												placeholder="Your Email" data-rule="email"
												data-msg="Please enter a valid email">
											<div class="validate"></div>
										</div>
									</div>
									<div class="col-md-12 mb-3">
										<div class="form-group">
											<input type="text" name="subject" required
												class="form-control form-control-lg form-control-a"
												placeholder="Subject" minlength="4"
												data-msg="Please enter at least 4 chars of subject">
											<div class="validate"></div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<textarea name="message" class="form-control" name="message"
												cols="45" rows="8" required
												data-msg="Please write something for us"
												placeholder="Message"></textarea>
											<div class="validate"></div>
										</div>
									</div>
									<div class="col-md-12 mb-3">
										<div class="mb-3">
											<div class="loading">Loading</div>
											<div class="sent-message">Your message has been sent.
												Thank you!</div>
										</div>
									</div>

									<div class="col-md-12 text-center">
										<button type="submit" class="btn btn-a">Send Message</button>
									</div>
								</div>
							</form>
						</div>
						<div class="col-md-5 section-md-t3">
							<div class="icon-box section-b2">
								<div class="icon-box-icon">
									<span class="ion-ios-paper-plane"></span>
								</div>
								<div class="icon-box-content table-cell">
									<div class="icon-box-title">
										<h4 class="icon-title">Say Hello</h4>
									</div>
									<div class="icon-box-content">
										<p class="mb-1">
											Email. <span class="color-a">contact@tikaana.com</span>
										</p>
										<p class="mb-1">
											Phone. <span class="color-a">+91 6309266677</span>
										</p>
									</div>
								</div>
							</div>
							<div class="icon-box section-b2">
								<div class="icon-box-icon">
									<span class="ion-ios-pin"></span>
								</div>
								<div class="icon-box-content table-cell">
									<div class="icon-box-title">
										<h4 class="icon-title">Find us in</h4>
									</div>
									<div class="icon-box-content">
										<p class="mb-1">
											3rd Floor, Trendz JP, C9X6+2G9, 
											<br>Chhota Anjaiah Nagar, Gachibowli, 
											<br>Hyderabad, Telangana 500032
										</p>
									</div>
								</div>
							</div>
							<div class="icon-box">
								<div class="icon-box-icon">
									<span class="ion-ios-redo"></span>
								</div>
								<div class="icon-box-content table-cell">
									<div class="icon-box-title">
										<h4 class="icon-title">Social networks</h4>
									</div>
									<div class="icon-box-content">
										<div class="socials-footer">
											<ul class="list-inline">
												<li class="list-inline-item"><a href="https://www.facebook.com/tikaana.coliving"
													target="_blank" class="link-one"> <i class="fa fa-facebook"
														aria-hidden="true"></i>
												</a></li>
												<li class="list-inline-item"><a href="https://twitter.com/ColivingTikaana"
													target="_blank" class="link-one"> <i class="fa fa-twitter"
														aria-hidden="true"></i>
												</a></li>
												<li class="list-inline-item"><a href="https://www.linkedin.com/company/tikaana-coliving"
													target="_blank" class="link-one"> <i class="fa fa-linkedin"
														aria-hidden="true"></i>
												</a></li>
												<li class="list-inline-item"><a href="https://www.instagram.com/tikaana.coliving/"
													target="_blank" class="link-one"> <i class="fa fa-instagram"
														aria-hidden="true"></i>
												</a></li>
												<!-- <li class="list-inline-item"><a href="#"
													class="link-one"> <i class="fa fa-pinterest-p"
														aria-hidden="true"></i>
												</a></li> -->
												<!-- <li class="list-inline-item"><a href="#"
													class="link-one"> <i class="fa fa-dribbble"
														aria-hidden="true"></i>
												</a></li> -->
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Contact Single--> </main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<!-- ======= Footer ======= -->
	<jsp:include page="/common/footer.jsp"></jsp:include>
	<!-- End  Footer -->

	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
	<div id="preloader"></div>

	<!-- Vendor JS Files -->
	<script
		src="<%=request.getContextPath()%>/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/php-email-form/validate.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/scrollreveal/scrollreveal.min.js"></script>

	<!-- Template Main JS File -->
	<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
	<script>
	$('document').ready(function(){
		$("#contact-form").submit(function(event) {
			event.preventDefault();
			saveEnquiry();
		});
	});	

	function saveEnquiry(){
		var formData=$("#contact-form").serialize();
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/send-enquiry",
			data : formData,
			//data : {"mail":$('#mail').text()},
			timeout : 100000,
			beforeSend:function(){
				$(".loading").show();
			},
			success : function(data) {
				
				console.log("SUCCESS: ", data);
				
				if(data=='success'){
					$('.sent-message').show();
				}else
				if(data=='error'){
					$('.error-message').html('Please try again later!');
				} else if(data=='empty'){
					$('.error-message').html('Please fill all the fields');
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
	}
</script>
	<script>
		$('document').ready(function() {
			$('#contact').addClass("active");
		});
	</script>
</body>

</html>