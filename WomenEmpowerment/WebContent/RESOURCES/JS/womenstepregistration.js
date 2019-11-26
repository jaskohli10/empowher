function populateTraining() {
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
	var htmlstring1;
	var xhr1 = new XMLHttpRequest();
	xhr1.open('GET', 'getTrainingsCategory', true);
	xhr1.responseType = 'text';
	xhr1.send();

	xhr1.onload = function() {
		if (xhr1.status == 200) {
			var trainingCategory = JSON.parse(xhr1.responseText);
			for (var i = 0; i < trainingCategory.length; i++) {
				htmlstring1 += "<option value = '"
						+ trainingCategory[i].trainingType + "' >"
						+ trainingCategory[i].trainingType + "</option>";
			}
			document.getElementById("trainingcategory").innerHTML = htmlstring1;
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
function populateNgoByCity() {
	var htmlstring;
	var city = document.getElementById("city").value;
	var xhr = new XMLHttpRequest();
	xhr.open('GET', 'getNgoByCity.do?city=' + city, true);
	xhr.responseType = 'text';
	xhr.send();
	xhr.onload = function() {
		if (xhr.status == 200) {
			var ngobycity = JSON.parse(xhr.responseText);
			if (ngobycity != "") {
				for (var i = 0; i < ngobycity.length; i++) {
					htmlstring += "<option value='"
							+ ngobycity[i].organizationName + "'>"
							+ ngobycity[i].organizationName + "</option>"
				}
				document.getElementById("ngocity").innerHTML = htmlstring;
			}
		}
	}
}
function populateTrainingNameByNgoName() {
	var htmlstring;
	var ngos = document.getElementById("ngocity");
	var ngoname = ngos.options[ngos.selectedIndex].value;
	var xhr = new XMLHttpRequest();
	xhr
			.open('GET', 'getTrainingByNgoName.do?organizationName=' + ngoname,
					true);
	xhr.responseType = 'text';
	xhr.send();
	xhr.onload = function() {
		if (xhr.status == 200) {
			var trainings = JSON.parse(xhr.responseText);
			var trainingTypes = document.getElementById("trainingcategory");
			var trainingType = trainingTypes.options[trainingTypes.selectedIndex].value;
			for (var i = 0; i < trainings.length; i++) {
				if (trainingType == trainings[i].trainingType.trainingType) {
					htmlstring += "<option value='" + trainings[i].trainingName
							+ "'>" + trainings[i].trainingName + "</option>"
				}
			}
			document.getElementById("trainingname").innerHTML = htmlstring;
		}
	}
}
function setNgoIdTrainingId() {
	var ngos = document.getElementById("ngocity");
	var ngoname = ngos.options[ngos.selectedIndex].value;
	var city = document.getElementById("city").value;
	var trainings = document.getElementById("trainingname");
	var trainingname = trainings.options[trainings.selectedIndex].value;
	var xhr = new XMLHttpRequest();
	xhr.open('GET', 'getNgoByCity.do?city=' + city, true);
	xhr.responseType = 'text';
	xhr.send();
	xhr.onload = function() {
		if (xhr.status == 200) {
			var ngobycity = JSON.parse(xhr.responseText);
			if (ngobycity != "") {
				for (var i = 0; i < ngobycity.length; i++) {
					if (ngoname == ngobycity[i].organizationName) {
						document.getElementById("ngoid").value = ngobycity[i].ngoRegisterationId;
					}
				}
			}
		}
	}
	var xhr1 = new XMLHttpRequest();
	xhr1.open('GET', 'getTrainingByNgoName.do?organizationName=' + ngoname,
			true);
	xhr1.responseType = 'text';
	xhr1.send();
	xhr1.onload = function() {
		if (xhr.status == 200) {
			var trainings = JSON.parse(xhr1.responseText);
			for (var i = 0; i < trainings.length; i++) {
				if (trainingname == trainings[i].trainingName) {
					document.getElementById("trainingId").value = trainings[i].trainingId;
				}
			}
		}
	}

}
