<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="RESOURCES/CSS/stepregistration.css">
</head>
<body>
	<div class="header"></div>
	<div class="row">
		<div class="card">
			<div class="logo"></div>
			<div class="login-block">
				<h1>STEP Registration Form</h1>
				<form action="add.do">
					<table>
						<tr>
							<th>Registration ID</th>
							<td><input type="text" value=""
								placeholder="Registration ID" id="regid" name="regid" /></td>
						</tr>
						<tr>
							<th>Username</th>
							<td><input type="text" value="" placeholder="Username"
								id="username" name="username" /></td>
						</tr>
						<tr>
							<th>First Name</th>
							<td><input type="text" value="" placeholder="Firstname"
								id="firstname" name="firstname" /></td>
						</tr>
						<tr>
							<th>Middle Name</th>
							<td><input type="text" value="" placeholder="Middlename"
								id="middlename" name="middlename" /></td>
						</tr>
						<tr>
							<th>Last Name</th>
							<td><input type="text" value="" placeholder="Lastname"
								id="lastname" name="lastname" /></td>
						</tr>
						<tr>
							<th>Date of Birth</th>
							<td><input type="date" value="" placeholder="" id="dob"
								name="dob"></td>
						</tr>
						<tr>
							<th>Marital Status</th>
							<td><select>
									<option value="xz">---select---</option>
									<option value="unmarried">Unmarried</option>
									<option value="married">Married</option>
									<option value="widowed">Widowed</option>
									<option value="divorced">Divorced</option>
									<option value="separated">Separated</option>
							</select> <!--placeholder="maritalstatus"
					id="maritalstatus" name="maritalstatus">--></td>
						</tr>

						<!--<tr>
					<th>Gender</th>
					<td><input type="radio" value="r1" placeholder="Enter MOA"
					id ="r1" name="gender">Male</td>
					<td><input type="radio" value="r1" placeholder="Enter MOA"
					id ="r1" name="gender">Female</td>
					<td><input type="radio" value="r1" placeholder="Enter MOA"
					id ="r1" name="gender">Other</td>
				</tr>-->
						<tr>
							<th>Caste</th>
							<td><select>
									<option value="xy">---select---</option>
									<option value="general">General</option>
									<option value="obc">OBC</option>
									<option value="scst">SC/ST</option>
									<option value="vjnt">VJ/NT</option>
									<option value="sbc">SBC</option>
							</select> <!--placeholder="caste"
							id="caste" name="caste">--></td>
						</tr>
						<tr>
							<th>Category (If applicable)</th>
							<td><select>
									<option value="xx">---select---</option>
									<option value="physically">Physically Challenged</option>
									<option value="visually">Visually challenged</option>
									<option value="hearing">Hearing Impaired</option>
							</select> <!--placeholder="category"
								id="category" name="category">--></td>
						</tr>

						<tr>
							<th>State</th>
							<td><input type="text" value="state" id="state" name="state" /></td>
						</tr>
						<tr>
							<th>City</th>
							<td><input type="text" value="city" placeholder="" id="city"
								name="city" /></td>
						</tr>
						<tr>
							<th>Address</th>
							<td><input type="text" value="" placeholder="Address"
								id="address" name="address" /></td>
						</tr>
						<tr>
							<th>Zipcode</th>
							<td><input type="text" value="" placeholder="Zipcode"
								id="zipcode" name="zipcode" /></td>
						</tr>

						<tr>
							<th>Aadhar Card</th>
							<td><input type="text" value="" placeholder="Aadhar card"
								id="aadharcard" name="aadharcard" /></td>
						</tr>
						<tr>
							<th>Upload your Aadhar card (in .pdf format only)</th>
							<td><input type="url" value="" placeholder="" id="aadharpic"
								name="aadharpic"></td>
						</tr>
						<tr>
							<th>Pan Card</th>
							<td><input type="text" value="" placeholder="Pan card"
								id="pancard" name="pancard"></td>
						</tr>
						<tr>

							<th>Upload your Pan card (in .pdf format only)</th>
							<td><input type="text" value="" placeholder="" id="panpic"
								name="panpic"></td>
						</tr>

						<tr>
							<th>TRAINING DETAILS</th>
						</tr>
						<tr>
							<th>Training Name</th>
							<td><input type="text" value="" placeholder="Training Name"
								id="trainingname" name="trainingname"></td>
						</tr>
						<tr>
							<th>Training Type</th>
							<td><input type="text" value="" placeholder="Training Type"
								id="trainingtype" name="trainingtype"></td>
						</tr>
						<tr>
							<th>Duration</th>
							<td><input type="text" value="" placeholder="Pan card"
								id="duration" name="duration"></td>
						</tr>
						<tr>
							<th>HOSTEL DETAILS</th>
						</tr>
						<tr>
							<th>Hostel State</th>
							<td><input type="text" value="" placeholder="Hostel State"
								id="hostelstate" name="hostelstate"></td>
						</tr>
						<tr>
							<th>Hostel City</th>
							<td><input type="text" value="" placeholder="Hostel City"
								id="hostelcity" name="hostelcity"></td>
						</tr>
						<tr>
							<th>Hostel Zip code</th>
							<td><input type="text" value=""
								placeholder="Hostel Zip Code" id="hostelzip" name="hostelzip">
							</td>
						</tr>
						<tr>
							<th>Hostel Address</th>
							<td><input type="text" value="" placeholder="Hostel Address"
								id="hosteladdress" name="hosteladdress"></td>
						</tr>

						<tr>
							<th>CHILD DETAILS</th>
						</tr>
						<tr>
							<th>No of Children</th>
							<td>
								<div class="sel">
									<select>
										<option value="xy">---select---</option>
										<option value="one">1</option>
										<option value="two">2</option>
										<option value="three">3</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th>Child First Name</th>
							<td><input type="text" value=""
								placeholder="Child First Name" id="childfirstname"
								name="childfirstname"></td>
						</tr>
						<tr>
							<th>Child Last name</th>
							<td><input type="text" value=""
								placeholder="Child Last Name" id="childlastname"
								name="childlastname"></td>
						</tr>
						<tr>
							<th>Age of Child</th>
							<td>
								<div class="sel">
									<select>
										<option value="xy">---select---</option>
										<option value="one1">1</option>
										<option value="two2">2</option>
										<option value="three3">3</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th>Gender</th>
							<td>
								<div class="rad">
									<input type="radio" value="r1" placeholder="" id="r1"
										name="gender">Male
							</td>
							<td><input type="radio" value="r1" placeholder="" id="r1"
								name="gender">Female</td>
							<td><input type="radio" value="r1" placeholder="" id="r1"
								name="gender">Other</td>
						</tr>
						</div>
						<tr>
							<th>Emergency Contact Number</th>
							<td><input type="text" value=""
								placeholder="Emergency Number" id="emergencyno"
								name="emergencyno"></td>
						</tr>
						<tr>
							<th>Approval Status</th>
							<td><input type="hidden" value="" placeholder=""
								id="approvalstatus" name="approvalstatus"></td>
						</tr>
</body>
</html>