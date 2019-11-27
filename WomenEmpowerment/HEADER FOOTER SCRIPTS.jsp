<!-- MANDATORY SCRIPTS FOR EACH PAGE!! -->

<!-- PATH FOR STATIC RESOURCES -->
IMAGES - 		RESOURCES/IMAGES/ 
JAVASCRIPTS - 	RESOURCES/JS/ 
JSON -			RESOURCES/JSON/ 
CSS - 			RESOURCES/CSS/

<!-- CSS FILE LINK -->
<link rel="stylesheet" href="RESOURCES/CSS/skeleton.css">

<!-- HEADER -->
<div class="header">
	<div style="text-align: left">
		<img id="logo" src="RESOURCES/IMAGES/mwcd.jpg" height="110"
			width="110">
	</div>
	<h1 class="headerhtags">MINISTRY OF WOMEN AND CHILD DEVELOPMENT</h1>
	<p>A GOVERNMENT OF INDIA INITIATIVE</p>
</div>

<!-- HEADER'S NAVIGATOR BAR  (change as per need!) -->

<div class="topnav">
	<a href="">HOME</a> <a href="stepHomePage">STEP</a> <a
		href="ngohomepage">NGO</a> <a href="aboutusPage">ABOUT US</a> <a
		href="contactusPage">CONTACT US</a> <a href="faqsPage">FAQ</a>

	<div class="dropdown" style="float: right">
		<button class="dropbtn">
			LOGIN <i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-content">
			<a href="viewUserLoginPage">User Login</a> <a
				href="viewAdminLoginPage">Admin Login </a>
		</div>
	</div>
</div>

<!-- HEADER'S NAVIGATOR BAR  (change as per need!) FOR USERHOME-->
	<div class="topnav">
		<a href="homePage">HOME</a>
		<div class="dropdown">
			<button class="dropbtn">
				NGO <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="ngoRegistrationPage"> Registration</a> <a
					href="ngoTrainingRegistrationPage"> Training Registration</a> <a
					href="ngoHostelRegistrationPage"> Hostel Registration</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				STEP <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="womenStepRegistrationPage">Training Registration</a> <a
					href="viewListedTraining.do">Listed Trainings </a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				WOMEN HOSTEL<i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="womenHostelRegistrationPage">Hostel DayNcare
					Registration </a> <a href="viewListedHostels.do">View Hostel</a>
			</div>
		</div>

		<div style="float: right">
			<a href="logout.do">LOGOUT</a>
		</div>
	</div>


<!-- FOOTER -->
<div class="footer">
	<h5 class="headerhtags">Website Content Managed by Ministry of
		Women and Child Development, GOI Designed, Developed and Hosted by
		National Informatics Centre( NIC ) Last Updated: 31 May 2019</h5>
</div>
