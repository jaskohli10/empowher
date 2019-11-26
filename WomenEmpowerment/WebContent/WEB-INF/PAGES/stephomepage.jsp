<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="RESOURCES/CSS/skeleton.css">
</head>
<body>
	<div class="header">
		<div style="text-align: left">
			<img id="logo" src="RESOURCES/IMAGES/mwcd.jpg" height="110"
				width="110">
		</div>
		<h1 class="headerhtags">MINISTRY OF WOMEN AND CHILD DEVELOPMENT</h1>
		<p>A GOVERNMENT OF INDIA INITIATIVE</p>
	</div>

	<div class="topnav">
		<a href="homePage">HOME</a> <a href="stepGuidelinePage">STEP
			GUIDELINES </a>

		<div class="dropdown" style="float: right">
			<button class="dropbtn">
				LOGIN <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="viewUserLoginPage">User Login</a> <a
					href="viewAdminLoginPage">Admin Login</a>
			</div>
		</div>
	</div>
	<div class="card">
		<div class="card">

			<h2>STEP: Support to Training and Employment Programme for Women</h2>
			<div class="fakeimg" style="height: 400px;">
				<img src="RESOURCES/IMAGES/HANDLOOM.jpg" height="400" width="1163">
			</div>
			<h3>About Scheme</h3>
			<p align="justify">The Ministry has been administering "Support
				to Training and Employment Programme for Women (STEP) Scheme" since
				1986-87 as a "Central Sector Scheme". The STEP Scheme aims to
				provide skills that give employability to women and to provide
				competencies and skill that enable women to become
				self-employed/entrepreneurs. The Scheme is intended to benefit women
				who are in the age group of 16 years and above across the country.
				The grant under the Scheme is given to an institution/ organisation
				including NGOs directly and not the States/ UTs. The assistance
				under STEP Scheme will be available in any sector for imparting
				skills related to employability and entrepreneurship, including but
				not limited to the Agriculture, Horticulture, Food Processing,
				Handlooms, Tailoring, Stitching, Embroidery, Zari etc, Handicrafts,
				Computer and IT enable services along with soft skills and skills
				for the work place such as spoken English, Gems and Jewellery,
				Travel and Tourism, Hospitality.</p>
		</div>
		<div class="card">
			<h2>SUKANYA SAMRUDDHI YOJANA</h2>
			<div class="fakeimg" style="height: 400px;">
				<img class="mySlides" src="RESOURCES/IMAGES/SUKANYA1.jpg"
					height="400" width="1163"> <img class="mySlides"
					src="RESOURCES/IMAGES/SUKANYA2.jpg" height="400" width="1163">
				<img class="mySlides" src="RESOURCES/IMAGES/SUKANYA3.jpg"
					height="400" width="1163">
				<script>
					var myIndex = 0;
					carousel();

					function carousel() {
						var i;
						var x = document.getElementsByClassName("mySlides");
						for (i = 0; i < x.length; i++) {
							x[i].style.display = "none";
						}
						myIndex++;
						if (myIndex > x.length) {
							myIndex = 1
						}
						x[myIndex - 1].style.display = "block";
						setTimeout(carousel, 3000); // Change image every 3 seconds
					}
				</script>
			</div>
			<h3>ABOUT SUKANYA SAMRUDDHI YOJANA</h3>
			<p align="justify">The government has taken up various measures
				in terms of education and financial freedom for the girl child.
				Sukanya Samriddhi Yojana is one such government back scheme to help
				parents save for the education and marriage of the girl child from
				the start itself.Sukanya Samriddhi Yojana is a small saving scheme,
				which can be opened in post offices and designated private and
				public banks in the form of a savings account in the name of the
				baby girl. The interest rate is declared quarterly just like other
				post office schemes. The interest rate for Jan-Mar’19 (Q4, FY
				2018-19) was 8.5%.It is regarded as one of the most high-paying
				investment options in the fixed income segment.</p>
		</div>
	</div>
	<div class="footer">
		<h5 class="headerhtags">Website Content Managed by Ministry of
			Women and Child Development, GOI Designed, Developed and Hosted by
			National Informatics Centre( NIC ) Last Updated: 31 May 2019</h5>
	</div>
</body>
</html>