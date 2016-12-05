function AdjustConfidencePointSelection(currentSelect) {

	var maxConfPoints;
	
	if (maxConfPoints == null || maxConfPoints == "")
	{
		maxConfPoints = 10;
	}
	
	// get all drop down objects
	arrayOfSelectElements = document.getElementsByTagName("select");

	// loop over all drop downs and append existing selections to selectedValues
	// array
	var selectedValues = new Array();
	// need to subtract 1 for the week selection drop down (I do not)
	var totalGames = arrayOfSelectElements.length;
	// var availableOptionsPlaceholder = new Array();

	for (i = 0; i < totalGames; i++) 
	{
		if (arrayOfSelectElements[i].value != "") {
			selectedValues[selectedValues.length] = arrayOfSelectElements[i].value;
		}
	}

	currentSelectValue = currentSelect.value;
	currentSelect.options.length = 0;
	currentSelect.options[0] = new Option("", "");

	for (ii = maxConfPoints; ii >= maxConfPoints - totalGames + 1; ii--) {
		iterationToString = ii + "";
		var selectedValuesJoin = "|" + selectedValues.join("|") + "|";
		if (selectedValuesJoin.indexOf("|" + iterationToString + "|") == -1
				|| currentSelectValue == iterationToString) {
			// currentSelect.options[currentSelect.options.length] = new
			// Option(ii, ii)
			currentSelect.options.add(new Option(ii, ii));

			if (iterationToString == currentSelectValue) {
				currentSelect.options[currentSelect.options.length - 1].selected = true;
			}
		}
	}
}

/* collect all forms in a document, put them into one form and post it */
function SubmitPicks() {
	var arrDocForms = document.getElementsByTagName('form');
	var formCollector = document.createElement("form");
	with (formCollector) {
		method = "post";
		action = "Servlet";
		name = "formCollector";
		id = "formCollector";
	}
	for (var ix = 0; ix < arrDocForms.length; ix++) {
		appendFormVals2Form(arrDocForms[ix], formCollector);
	}
	document.body.appendChild(formCollector);
	formCollector.submit();
}

/*
 * Function: add all elements from frmCollectFrom and append them to
 * frmCollector before returning frmCollector
 */
function appendFormVals2Form(frmCollectFrom, frmCollector) {
	var frm = frmCollectFrom.elements;
	for (var ix = 0; ix < frm.length; ix++)
		frmCollector.appendChild(frm[ix]);
	return frmCollector;
}