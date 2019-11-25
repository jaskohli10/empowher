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