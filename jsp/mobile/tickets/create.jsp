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
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, nice admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, " />
<meta name="description"
	content="Nice is powerful and clean admin dashboard template, inpired from Google's Material Design" />
<meta name="robots" content="noindex,nofollow" />
<title>Ticket | Ozai</title>
<link rel="canonical"
	href="https://www.wrappixel.com/templates/niceadmin/" />
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="<%=request.getContextPath()%>/new/assets/images/favicon.png" />
<!-- This page css -->
<link
	href="<%=request.getContextPath()%>/new/assets/extra-libs/toastr/dist/build/toastr.min.css"
	rel="stylesheet" />
<!-- Custom CSS -->
<link href="<%=request.getContextPath()%>/new/dist/css/style.min.css"
	rel="stylesheet" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script class="jsbin"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<style>
/* Adjust container styling as needed */
.file-upload {
	background-color: #ffffff;
	/width: 600px;/
	margin: 0 auto;
	padding: 1px;
}

/* .file-upload-btn { */
/*   width: 100%; */
/*   margin: 0; */
/*   color: #fff; */
/*   background: #1FB264; */
/*   border: none; */
/*   padding: 10px; */
/*   border-radius: 40px; */
/*   border-bottom: 4px solid #15824B; */
/*   transition: all .2s ease; */
/*   outline: none; */
/*   text-transform: uppercase; */
/*   font-weight: 700; */
/* } */

/* .file-upload-btn:hover { */
/*   background: #1AA059; */
/*   color: #ffffff; */
/*   transition: all .2s ease; */
/*   cursor: pointer; */
/* } */

/* .file-upload-btn:active { */
/*   border: 0; */
/*   transition: all .2s ease; */
/* } */
.file-upload-content {
	display: none;
	text-align: center;
}

.image-upload-wrap {
	margin-top: 2px; /* Adjust margin as needed */
	height: 10px; /* Reduce the height as needed */
	position: relative;
	overflow: hidden; /* Ensure that the input doesn't overflow */
}

.file-upload-input {
	/* Remove position absolute */
	position: relative; /* Set position to relative */
	/* Specify specific width and height */
	width: auto; /* Adjust as needed */
	height: 100%; /* Occupy full height of its parent */
	/* Other styling properties */
	margin: 0;
	padding: 0;
	outline: none;
	opacity: 0;
	cursor: pointer;
}

/* .image-dropping, */
/* .image-upload-wrap:hover { */
/*   background-color: #1FB264; */
/*   border: 4px dashed #ffffff; */
/* } */
.image-dropping {
	background-color: #1FB264;
	border: 4px dashed #ffffff;
}

.image-title-wrap {
	padding: 0 15px 15px 15px;
	color: #222;
}

.drag-text {
	text-align: center;
}

.drag-text h3 {
	font-weight: 100;
	text-transform: uppercase;
	color: #15824B;
	padding: 60px 0;
}

.file-upload-image {
	max-height: 100%;
	max-width: 100%;
	margin: auto;
	border: 2px dashed #1FB264;
}

.file-upload-video {
	max-height: 100%;
	max-width: 100%;
	margin: auto;
	border: 2px dashed #1FB264;
}

.remove-upload-btn {
	width: 200px;
	margin: 0;
	color: #fff;
	background: #cd4535;
	border: none;
	padding: 10px;
	border-radius: 4px;
	border-bottom: 4px solid #b02818;
	transition: all .2s ease;
	outline: none;
	text-transform: uppercase;
	font-weight: 700;
}

.remove-upload-btn:hover {
	background: #c13b2a;
	color: #ffffff;
	transition: all .2s ease;
	cursor: pointer;
}

.remove-upload-btn:active {
	border: 0;
	transition: all .2s ease;
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
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->

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
				<!-- basic table -->
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title text-center">DUMMY CREATE TICKET</h4>
								<div class="row mt-4">
									<div class="col-md-4 col-xl-2 d-flex align-items-stretch">
										<c:if test="${not empty User }">
											<form
												action="<%=request.getContextPath()%>/mobile/save-ticket"
												method="post" role="form" modelAttribute="ticket"
												enctype="multipart/form-data" id="ticket-form"
												class="php-email-form">
												<div class="row">
													<div class="col-md-6">
														<div class="mb-3">
															<select id="languageSelect" onchange="changeLanguage()">
																<option value="english">English</option>
																<option value="hindi">Hindi</option>
																<option value="malayalam">Malayalam</option>
																<option value="telugu">Telugu</option>
															</select>

															<div class="validate"></div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-6">
															<div class="mb-3">
																<label>Title</label> <input type="text" name="title"
																	id="title" required
																	class="form-control border border-dark" value="Title"/>
																<div class="validate"></div>
															</div>
														</div>
														<div class="col-md-6">
															<div class="mb-3">
																<label>Category</label> <select name="category"
																	id="category" required
																	class="form-control form-control-lg custom-select border border-dark">
																	<option value="">Select</option>
																	<option value="Electrical">Electrical</option>
																	<option value="Plumbing">Plumbing</option>
																	<option value="House Keeping">House Keeping</option>
																	<option value="Amenities">Amenities</option>
																	<option value="Common Area">Common Area</option>
																	<option value="Other">Other</option>
																	<option value="Category">Category</option>
																	<option value="श्रेणी">श्रेणी</option>
																	<option value="വിഭാഗം">വിഭാഗം</option>																	
																	<option value="వర్గం">వర్గం</option>
																</select>
																<div class="validate"></div>
															</div>
														</div>
														<div class="col-md-6 mb-3">
															<div class="form-group">
																<c:choose>
																	<c:when test="${User.resident_type eq 'B2B'}">
																		<input type="hidden" name="property_id"
																			id="property_id" value="${details.property_id }" />
																	</c:when>
																	<c:otherwise>
																		<input type="hidden" name="property_id"
																			id="property_id" value="${details.property_id }" />
																	</c:otherwise>
																</c:choose>
																<input type="hidden" name="user_id" id="user_id"
																	value="${User.id }" />
															</div>
														</div>
														<div class="col-md-6">
															<div class="mb-3">
																<label>Description</label>
																<textarea name="summary" class="form-control"
																	id="summary" cols="45" rows="8"
																	data-msg="Please write something(Optional)"
																	placeholder="Description"></textarea>
																<div class="validate"></div>
															</div>
														</div>


														<input type="hidden" name="status" id="status"
															value="Raised" />
														<!-- Add Audio Section -->
														<div class="file-upload" id="audio-upload-section">
															<button class="btn btn-rounded btn-danger" type="button"
																style="width: 100%;"
																onclick="$('#audio-upload-input').trigger('click')">Add
																Audio</button>
															<div class="image-upload-wrap">
																<input class="file-upload-input"
																	name="ticket_audio_file" id="audio-upload-input"
																	type='file' onchange="readAudioURL(this);"
																	accept="audio/*" />
																<div class="drag-text"></div>
															</div>
															<div class="file-upload-content"
																id="audio-upload-content" style="display: none;">
																<!-- Display the audio player for uploaded audio -->
																<audio controls class="file-upload-audio"
																	id="uploaded-audio"></audio>
																<div class="audio-title-wrap">
																	<button type="button" onclick="removeUpload('audio')"
																		class="remove-upload-btn">
																		Remove <span class="upload-title">Audio</span>
																	</button>
																</div>
															</div>
														</div>

														<!-- Add Image Section -->
														<div class="file-upload" id="image-upload-section">
															<button class="btn btn-rounded btn-warning" type="button"
																style="width: 100%;"
																onclick="$('#image-upload-input').trigger('click')">Add
																Image</button>
															<div class="image-upload-wrap">
																<input class="file-upload-input"
																	name="ticket_image_file" id="image-upload-input"
																	type='file' onchange="readImageURL(this);"
																	accept="image/*" />
																<div class="drag-text"></div>
															</div>
															<div class="file-upload-content"
																id="image-upload-content" style="display: none;">
																<img class="file-upload-image" src="#" alt="your image" />
																<div class="image-title-wrap">
																	<button type="button" onclick="removeUpload('image')"
																		class="remove-upload-btn">
																		Remove <span class="upload-title">Image</span>
																	</button>
																</div>
															</div>
														</div>

														<!-- Add Video Section -->
														<div class="file-upload" id="video-upload-section">
															<button class="btn btn-rounded btn-secondary"
																type="button" style="width: 100%;"
																onclick="$('#video-upload-input').trigger('click')">Add
																Video</button>
															<div class="image-upload-wrap">
																<input class="file-upload-input"
																	name="ticket_video_file" id="video-upload-input"
																	type='file' onchange="readVideoURL(this);"
																	accept="video/*" />
																<div class="drag-text"></div>
															</div>
															<div class="file-upload-content"
																id="video-upload-content" style="display: none;">
																<!-- Set the ID of the video element to 'uploaded-video' -->
																<video class="file-upload-video" id="uploaded-video"
																	autoplay loop muted></video>
																<div class="video-title-wrap">
																	<button type="button" onclick="removeUpload('video')"
																		class="remove-upload-btn">
																		Remove <span class="upload-title">Video</span>
																	</button>
																</div>
															</div>
														</div>


														<div class="form-actions">
															<div class="card-body border-top text-center">
																<button type="submit" id="send"
																	class="btn btn-dark btn-lg rounded-pill px-4">
																	<div class="d-flex align-items-center">
																		<i data-feather="save"
																			class="feather-sm me-1 fill-icon"></i>
																		Save
																	</div>
																</button>
															</div>
														</div>
														<br>
														<br>
														<br>
													</div>
											</form>
											<br>
											<br>
											<br>
										</c:if>
										<c:if test="${empty User }">
											<div class="col-md-12 text-center">
												<a href="<%=request.getContextPath()%>/mobile"
													class="btn btn-a" id="send">Login</a>
											</div>
										</c:if>
										<div class="col-md-12 mb-3">
											<br>
											<div
												class="col-md-4 col-xl-2 
								d-flex align-items-stretch"
												id="success-list" style="display: none !important;">
												<a
													href="<%=request.getContextPath()%>/mobile/user/tickets/list"
													class="card bg-success text-white w-100 card-hover">
													<div class="card-body">
														<div class="d-flex align-items-center">
															Ticket created.
															<div class="ms-auto">
																<i data-feather="arrow-right" class="fill-white"></i>
															</div>
														</div>
													</div>
												</a>
											</div>
											<button type="button"
												class=" btn btn-lg px-4
		                        fs-4 btn-light-primary text-primary font-weight-medium"
												id="success-alert" style="display: none;">
												slideDown - slideUp</button>
											<button type="button"
												class=" btn btn-lg px-4
		                        fs-4 btn-light-primary text-primary font-weight-medium"
												id="empty-alert" style="display: none;">slideDown -
												slideUp</button>
											<button type="button"
												class=" btn btn-lg px-4
		                        fs-4 btn-light-primary text-primary font-weight-medium"
												id="error-alert" style="display: none;">slideDown -
												slideUp</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->

			<!-- footer -->
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

	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script
		src="<%=request.getContextPath()%>/new/assets/libs/jquery/dist/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/new/assets/extra-libs/taskboard/js/jquery.ui.touch-punch-improved.js"></script>
	<script
		src="<%=request.getContextPath()%>/new/assets/extra-libs/taskboard/js/jquery-ui.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="<%=request.getContextPath()%>/new/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- apps -->
	<script src="<%=request.getContextPath()%>/new/dist/js/app.min.js"></script>
	<script src="<%=request.getContextPath()%>/new/dist/js/app.init.js"></script>
	<script
		src="<%=request.getContextPath()%>/new/dist/js/app-style-switcher.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script
		src="<%=request.getContextPath()%>/new/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/new/assets/libs/jquery-sparkline/jquery.sparkline.min.js"></script>
	<!--Wave Effects -->
	<script src="<%=request.getContextPath()%>/new/dist/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="<%=request.getContextPath()%>/new/dist/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="<%=request.getContextPath()%>/new/dist/js/feather.min.js"></script>
	<script src="<%=request.getContextPath()%>/new/dist/js/custom.min.js"></script>
	<!--This page JavaScript -->
	<script
		src="<%=request.getContextPath()%>/new/dist/js/pages/notes/notes.js"></script>
	<script
		src="<%=request.getContextPath()%>/new/assets/extra-libs/toastr/dist/build/toastr.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/new/assets/extra-libs/toastr/toastr-init.js"></script>
	<script src="<%=request.getContextPath()%>/assets/ticket-category.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
	<script
		src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
	<script
		src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>

	<script type="text/javascript">
	
	function changeLanguage() {
		
		  var selectedLanguage = document.getElementById("languageSelect").value;
		 // alert ("selectedLanguage is" + selectedLanguage);
		  // Titles mapping for different languages
		  
		  var titleLabel = "";
		  var categoryLabel = "";
		  var descriptionLabel = "";
		  
		  var titles = {
		    "english": {
		      "titleLabel": "Title",
		      "categoryLabel": "Category",
		      "descriptionLabel": "Description",
		      // Add more titles here as needed
		    },
		    "hindi": {
		      "titleLabel": "शीर्षक",
		      "categoryLabel": "श्रेणी",
		      "descriptionLabel": "विवरण",
		      // Add more titles here as needed
		    },
		    "malayalam": {
		      "titleLabel": "തലകെട്ട്",
		      "categoryLabel": "വിഭാഗം",
		      "descriptionLabel": "വിവരണം",
		      // Add more titles here as needed
		    },
		    "telugu": {
		      "titleLabel": "శీర్షిక",
		      "categoryLabel": "వర్గం",
		      "descriptionLabel": "వివరణ",
		      // Add more titles here as needed
		    }
		  };

		  // Update the titles based on the selected language
		 // alert ("Before assigning value is" + titles[selectedLanguage]["categoryLabel"]);
		  document.getElementById("title").value = titles[selectedLanguage]["titleLabel"];
		  document.getElementById("category").value = titles[selectedLanguage]["categoryLabel"];
		  document.getElementById("summary").innerText = titles[selectedLanguage]["descriptionLabel"];
		  // Update more elements as needed
		}

		  
	
	function readAudioURL(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function(e) {
	            $('#audio-upload-content').show(); // Show audio upload content
	            $('#image-upload-content').hide(); // Hide image upload content
	            $('#video-upload-content').hide(); // Hide video upload content
	            $('#uploaded-audio').attr('src', e.target.result); // Set the src attribute of the audio element
	        };
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	function readImageURL(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function(e) {
	            $('#image-upload-content').show(); // Show image upload content
	            $('#audio-upload-content').hide(); // Hide audio upload content
	            $('#video-upload-content').hide(); // Hide video upload content
	            $('.file-upload-image').attr('src', e.target.result);
	        };
	        reader.readAsDataURL(input.files[0]);
	    }
	}

    function readVideoURL(input) {
        if (input.files && input.files[0]) {
            // Check file size
            if ((input.files[0].size / 1024).toFixed(0) > 50 * 1024) {
                var video_obj = $('#video-upload-input');
                alert("Attachment must be less or equal to 50MB");
                video_obj.replaceWith(video_obj.val('').clone(true));
                return;
            }

            var reader = new FileReader();
            reader.onload = function(e) {
                $('#video-upload-content').show(); // Show video upload content
                $('#image-upload-content').hide(); // Hide image upload content
                $('#audio-upload-content').hide(); // Hide audio upload content
                $('#uploaded-video').attr('src', e.target.result); // Set the src attribute of the video element
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

	


	function removeUpload(type) {
		if (type === 'audio') {
	        // Remove audio upload content
	        $('#audio-upload-content').hide();
		} else if (type === 'image') {
	        // Remove image upload content
	        $('#image-upload-content').hide();
	    } else if(type === 'video') {
	        // Remove video upload content
	        $('#video-upload-content').hide();
		}
	    // Reset file input value
	    $('.file-upload-input').val('');
	}
	
		
		$('.image-upload-wrap').bind('dragover', function () {
		        $('.image-upload-wrap').addClass('image-dropping');
		    });
		$('.image-upload-wrap').bind('dragleave', function () {
		        $('.image-upload-wrap').removeClass('image-dropping');
		});
	
		    
		$('document').ready(function(){
		
		populateCategories("category", "sub", "issue");
		populateSub("category", "sub","issue");
		//$('#country option:contains("India")').prop('selected',true);
		populateIssue("category", "issue");
		
		$("#success-alert").on("click", function () {
		    toastr.success(
		      "Your ticket has been created",
		      { showMethod: "slideDown", hideMethod: "slideUp", timeOut: 2000 }
		    );
		  });
		$("#error-alert").on("click", function () {
		    toastr.error(
		      "Error, Please try again later.",
		      { showMethod: "slideDown", hideMethod: "slideUp", timeOut: 2000 }
		    );
		  });
		$("#empty-alert").on("click", function () {
		    toastr.warning(
		      "Please fill in all the details.",
		      { showMethod: "slideDown", hideMethod: "slideUp", timeOut: 2000 }
		    );
		  });
		/* $("#contact-form2").submit(function(event) {
			event.preventDefault();
			saveEnquiry();
		}); */
	});	

		
    	$('document').ready(function(){
    		//$('.sidebartoggler').toggle();
    	});
      $(function () {
        "use strict";
        $("#main-wrapper").AdminSettings({
          LogoBg: "skin6",
		  HeaderPosition: true,
		  Theme: false,
        });
      });
      
      console.log('Before calling validate function');
      $('#tickect-form').validate({
          errorElement: 'div',
          errorClass: 'error-msg',
          focusInvalid: true,
          rules: {
        	  ticket_audio_file: {
                  required: true,
                  accept: "audio/*"
        	  },
              ticket_image_file: {
                  required: true,
                  accept: "image/*"
              },
              ticket_video_file: {
                  required: true,
                  accept: "video/*"
              }
          },
          messages: {
        	  ticket_audio_file: {
                  required: "Please choose your audio file.",
                  accept: "Please select a valid audio file"  
        	  },
              ticket_image_file: {
                  required: "Please choose your image file.",
                  accept: "Please select a valid image file"
              },
              ticket_video_file: {
                  required: "Please choose your file.",
                  accept: "Please select a valid video file"
              }
          },
          submitHandler: function(form) {
              $('#submitProcess').show();
              $('#ticket-form button[type=submit]').prop("disabled", "disabled");
              form.submit();
          }
      });
      console.log('After calling validate function');
    </script>
</body>
</html>