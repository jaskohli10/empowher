function printError(elemId, hintMsg) {
	document.getElementById(elemId).innerHTML = hintMsg;
}

function ngoRegistrationValidate() {
	var username = document.getElementById("userName").value;
	var password = document.getElementById("password").value;
	var cpassword = document.getElementById("cpassword").value;
	var email = document.getElementById("email").value;
	var contactNo = document.getElementById("contactNo").value;

	var errorusername = false;
	var errorpassword = false;
	var errorcpassword = false;
	var erroremail = false;
	var errorcontact = false;

	if (username == "") {
		errorusername = true;
		printError("error-username", "Please enter your username");
	} else {
		var regex = /^[a-zA-Z\s]+$/;
		if (regex.test(username) === false) {
			errorusername = true;
			printError("error-username", "Please enter a valid username");
		} else {
			printError("error-username", "");
			errorusername = false;
		}
	}

	if (password == '') {
		errorpassword = true;
		printError("error-password", "Password cannot be blank");

	} else {
		var regex = /^[a-zA-Z0-9]\w{7,14}$/;
		if (regex.test(password) === false) {
			errorpassword = true;
			printError("error-password", "Enter a valid password");

		} else {
			printError("error-password", "");
			errorpassword = false;
		}

	}

	if (password != cpassword) {
		errorcpassword = true;
		printError("error-cpassword", "Password does not match");

	}

	else {
		printError("error-cpassword", "");
		cpassword = false;
	}

	if (email == "") {
		erroremail = true;
		printError("error-email", "Please enter your email address");
	} else {
		// Regular expression for basic email validation
		var regex = /^\S+@\S+\.\S+$/;
		if (regex.test(email) === false) {
			erroremail = true;
			printError("error-email", "Please enter a valid email address");
		} else {
			printError("error-email", "");
			erroremail = false;
		}
	}

	// Validate mobile number
	if (contactNo == "") {
		errorcontact = true;
		printError("error-contact", "Please enter your contact number");
	} else {
		var regex = /^[0][1-9]\d{9}$|^[1-9]\d{9}$/;
		if (regex.test(contactNo) === false) {
			errorcontact = true;
			printError("error-contact",
					"Please enter a valid 10 digit contact number");
		} else {
			printError("error-contact", "");
			errorcontact = false;
		}
	}
	if (!errorusername && !errorpassword && !errorcpassword && !erroremail
			&& !errorcontact) {
		alert("hello");
		document.getElementById("myForm").submit();
	}

}
