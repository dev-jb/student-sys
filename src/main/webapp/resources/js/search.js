var request;
function sendInfo() {
	var v = document.searchForm.searchByName.value;
	var url = "StudentController?actions=search_student_list&name=" + name;

	if (window.XMLHttpRequest) {
		request = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		request = new ActiveXObject("Microsoft.XMLHTTP");
	}

	try {
		request.onreadystatechange = getInfo;
		request.open("GET", url, true);
		request.send();
	} catch (e) {
		alert("Unable to connect to server");
	}
}

function getInfo() {
	if (request.readyState == 4) {
		var val = request.responseText;
		document.getElementById('amit').innerHTML = val;
	}
}