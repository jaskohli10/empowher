function populateStates() {
	var htmlstring;
	var xhr = new XMLHttpRequest();
	xhr.open('GET', 'RESOURCES/JSON/StateCity.json');
	xhr.responseType = 'text';
	xhr.send();
	xhr.onload = function() {
		if (xhr.status == 200) {
			var stateCityData = JSON.parse(xhr.responseText);
			for (let indexouter = 0; indexouter < stateCityData.states.length; indexouter++) {
				htmlstring += "<option value='"
						+ stateCityData.states[indexouter].state + "'>"
						+ stateCityData.states[indexouter].state + "</option>"

				document.getElementById("state").innerHTML = htmlstring;
			}
		}
	}
}
function populateRespectiveCity() {
	var htmlstring;
	var xhr = new XMLHttpRequest();
	var state = document.getElementById("state");
	var statevalue = state.options[state.selectedIndex].value;
	xhr.open('GET', 'RESOURCES/JSON/StateCity.json');
	xhr.responseType = 'text';
	xhr.send();
	xhr.onload = function() {
		if (xhr.status == 200) {
			var stateCityData = JSON.parse(xhr.responseText);
			for (let indexouter = 0; indexouter < stateCityData.states.length; indexouter++) {
				if (statevalue == stateCityData.states[indexouter].state) {
					for (let index = 0; index < stateCityData.states[indexouter].districts.length; index++) {
						htmlstring += "<option value='"
								+ stateCityData.states[indexouter].districts[index]
								+ "'>"
								+ stateCityData.states[indexouter].districts[index]
								+ "</option>"
					}
					document.getElementById("city").innerHTML = htmlstring;
				}
			}
		}
	}
}
function printError(elemId, hintMsg) {
	document.getElementById(elemId).innerHTML = hintMsg;
}

function ngoRegistrationValidate() {
	var organizationName = document.getElementById("organizationName").value;
	var ownerName = document.getElementById("ownerName").value;
	var address = document.getElementById("address").value;
	var staffno = document.getElementById("staffStrength").value;
	var moa = document.getElementById("moa").value;
	var sra = document.getElementById("sra").value;

	var errorOrganizationName = true;
	var errorOwnerName = true;
	var errorAddress = true;
	var errorStaffno = true;
	var errorMoa = true;
	var errorSra = true;

	if (organizationName == '') {
		printError("error-organizationName",
				"Organisation name cannot be blank");

	} else {
		var regex = /^[a-zA-Z\s]+$/;
		if (regex.test(organizationName) === false) {
			printError("error-organizationName",
					"Enter a valid organisation name");

		} else {
			printError("error-organizationName", "");
			errorOrganizationName = false;
		}

	}

	if (ownerName == '') {
		printError("error-ownerName", "Owner name cannot be blank")

	} else {
		var regex = /^[a-zA-Z\s]+$/;
		if (regex.test(ownerName) === false) {
			printError("error-ownerName", "Owner name cannot have digits");
		} else {
			printError("error-ownerName", "");
			errorOwnerName = false;
		}
	}

	if (address == '') {
		printError("error-address", "Address cannot be blank");
	} else {
		var regex = /^\d{10}$/;
		if (regex.test(address) === false) {
			printError("error-address",
					"Address cannot be less than 10 characters");
		} else {
			printError("error-address", "");
			errorAddress = false;

		}
	}

	if (staffno == '') {
		printError("error-staffno", "Staff Number cannot be blank");
	} else {
		var regex = /^[1-1000\s]+$/;
		if (regex.test(staffno) === false) {
			printError("error-staffno", "Staff Number cannot be characters");
		} else {
			printError("error-staffno", "");
			errorStaffno = false;
		}
	}
	if (!errorOrganizationName && !errorOwnerName && !errorAddress
			&& !errorStaffno && !errorMoa && !errorSra) {
		document.getElementById("myForm").submit();
	}
}