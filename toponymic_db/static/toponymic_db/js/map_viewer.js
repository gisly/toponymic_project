var geonames;
var geoobjects;
var latLngs = Array();
var map;
var ruler;
var currentLanguage= 0;
$(document).ready( function () {
    initializeMap();
    fillInObjects();
 });



 function initializeMap(){

    map = L.map('map').setView([66.7889, 93.7753], 13);
	const tiles = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
		maxZoom: 19,
		attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
	}).addTo(map);
    L.control.scale().addTo(map);
    addRulerToMap(map);

}

function fillInObject(geoname, geoobject){
    var latitude = geoobject.fields['latitude']
    var longitude = geoobject.fields['longitude']
    var marker = L.marker([latitude, longitude]);
    marker.addTo(map);
    marker.bindPopup(generatePopupTable(geoname), {maxWidth : 1000})
    latLngs.push([latitude, longitude])
}

function fillInObjects(){
    console.log(geonames)
    for (let i = 0; i < geonames.length; i++) {
        var geoname = geonames[i]
        var geoobject = geoobjects[i]
        fillInObject(geoname, geoobject)
    }
    var bounds = new L.LatLngBounds(latLngs);
    map.fitBounds(bounds);

}

function generatePopupTable(geoname){
    var replacementData = {"geoname": geoname.fields['geoname'],
                            "name_translation_ru": geoname.fields['name_translation_ru'],
                            "name_translation_en": geoname.fields['name_translation_en']}
    return replaceMe(POPUP_TABLES[currentLanguage], replacementData);
}


//https://stackoverflow.com/questions/377961/efficient-javascript-string-replacement
function replaceMe(template, data) {
  const pattern = /{\s*(\w+?)\s*}/g; // {property}
  return template.replace(pattern, (_, token) => data[token] || '');
}


function addRulerToMap(){
	var options = RULER_OPTIONS[currentLanguage];
	if(ruler != undefined && ruler != null) {
		ruler.options = options;
	}
	else{
		ruler = L.control.ruler(options).addTo(map);
	}
}

const POPUP_TABLES = ["<table class='column-bordered-table'>" +
                                "<tr><td class='table_rubric'>Название</td><td class='table-data'>{geoname}</td></tr>" +
                                "<tr><td class='table_rubric'>Перевод</td><td class='table-data'>{name_translation_ru}</td></tr>" +
                                "</table>",
                             "<table class='column-bordered-table'>" +
                                "<tr><td class='table_rubric'>Title</td><td class='table-data'>{geoname}</td></tr>" +
                                "<tr><td class='table_rubric'>Translation</td><td class='table-data'>{name_translation_en}</td></tr>" +
                                "</table>"
                                ]

const RULER_OPTIONS = [
	{
		position: 'bottomleft',
		circleMarker: {
			color: 'red',
			radius: 2
		},
		lineStyle: {
			color: 'red',
			dashArray: '1,6'
		},
		lengthUnit: {
			display: 'км',
			decimal: 2,
			factor: null,
			label: 'Расстояние:'
		},
		angleUnit: {
			display: '&deg;',
			decimal: 2,
			factor: null,
			label: 'Направление:'
		}},
	{
		position: 'bottomleft',
		circleMarker: {
			color: 'red',
			radius: 2
		},
		lineStyle: {
			color: 'red',
			dashArray: '1,6'
		},
		lengthUnit: {
			display: 'km',
			decimal: 2,
			factor: null,
			label: 'Distance:'
		},
		angleUnit: {
			display: '&deg;',
			decimal: 2,
			factor: null,
			label: 'Bearing:'
		}},
]
