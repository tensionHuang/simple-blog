/**
 * font related features
 */

function fontZoomIn(element) {
	var style = window.getComputedStyle(element, null).getPropertyValue(
			'font-size');
	var fontSize = parseFloat(style);
	// now you have a proper float for the font size (yes, it can be a float,
	// not just an integer)
	element.style.fontSize = (fontSize + 1) + 'px';
}

function fontZoomOut(element) {
	var style = window.getComputedStyle(element, null).getPropertyValue(
			'font-size');
	var fontSize = parseFloat(style);
	// now you have a proper float for the font size (yes, it can be a float,
	// not just an integer)
	element.style.fontSize = (fontSize - 1) + 'px';
}