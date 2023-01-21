var geonames;
var geoobjects;
var latLngs = Array();
var map;
var ruler;
var currentLanguage = 0;

var markers = []
$(document).ready(function() {
    initializeMap();
    fillInObjects();
    initializeUtils();
});



function initializeMap() {
    map = L.map('map').setView([66.7889, 93.7753], 13);
    const osmTiles = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        id: 'OSM',
        maxZoom: 19,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    });
    const customTiles = L.tileLayer('http://195.133.49.241/hot/{z}/{x}/{y}.png', {
        id: 'LPR',
        maxZoom: 18,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    });
    map.addLayer(customTiles);
    L.control.scale().addTo(map);
    addRulerToMap(map);
}


function fillInObjects() {
    for (let i = 0; i < geonames.length; i++) {
        var geoname = geonames[i]
        var geoobject = geoobjects[i]
        fillInObject(geoname, geoobject)
    }
    var bounds = new L.LatLngBounds(latLngs);
    map.fitBounds(bounds);

}

function initializeUtils() {
    $("#languageSwitcher").click(function() {
        currentLanguage += 1;
        if (currentLanguage >= LANGUAGES.length) {
            currentLanguage = 0;
        }
        $(this).html(LANGUAGES[currentLanguage]);
        switchPopups();
        switchMenu();
    });

    $("#listView").click(function() {
        window.open('/list', '_self');
    });
}

function switchPopups() {
    for (let i = 0; i < geonames.length; i++) {
        var geoname = geonames[i];
        var geoobject = geoobjects[i];
        var marker = markers[i];
        marker.bindPopup(generatePopupTable(geoname, geoobject), {
            maxWidth: 1000
        });
    }
}

function switchMenu(){
    $("#listView").html(MENU_LIST_VIEW[currentLanguage]);
}

function fillInObject(geoname, geoobject) {
    var latitude = geoobject.fields['latitude']
    var longitude = geoobject.fields['longitude']
    var marker = new L.CircleMarker([latitude, longitude], {
        radius: 7,
        color: "red"
    });
    marker.addTo(map);
    marker.bindPopup(generatePopupTable(geoname, geoobject), {
        maxWidth: 1000
    });
    latLngs.push([latitude, longitude]);
    markers.push(marker);
}


function generatePopupTable(geoname, geoobject) {
    var geotype = getGeotypeById(geoobject.fields['geotype_id']);
    var geolanguage = getLanguageById(geoname.fields['language_id']);
    var geonameName = geoname.fields['geoname'];
    if (isLatinScript(currentLanguage)) {
        geonameName = transliterate(geonameName);
    }
    var replacementData = {
        "geoname": geonameName,
        "name_translation_ru": geoname.fields['name_translation_ru'],
        "name_translation_en": geoname.fields['name_translation_en'],
        "geotype": geotype,
        "geolanguage": geolanguage
    };
    return replaceMe(POPUP_TABLES[currentLanguage], replacementData);
}


//https://stackoverflow.com/questions/377961/efficient-javascript-string-replacement
function replaceMe(template, data) {
    const pattern = /{\s*(\w+?)\s*}/g; // {property}
    return template.replace(pattern, (_, token) => data[token] || '');
}


function addRulerToMap() {
    var options = RULER_OPTIONS[currentLanguage];
    if (ruler != undefined && ruler != null) {
        ruler.options = options;
    } else {
        ruler = L.control.ruler(options).addTo(map);
    }
}

function getGeotypeById(geotypeId) {
    return GEOTYPES[geotypeId][currentLanguage];
}

function getLanguageById(langugeId) {
    return GEOLANGUAGES[langugeId][currentLanguage];
}

const POPUP_TABLES = ["<table class='column-bordered-table'>" +
    "<tr><td class='table-rubric'>Топоним</td><td class='table-data'>{geoname}</td></tr>" +
    "<tr><td class='table-rubric'>Тип</td><td class='table-data'>{geotype}</td></tr>" +
    "<tr><td class='table-rubric'>Язык</td><td class='table-data'>{geolanguage}</td></tr>" +
    "<tr><td class='table-rubric'>Перевод</td><td class='table-data'>{name_translation_ru}</td></tr>" +
    "<tr><td class='table-rubric'>Этимология</td><td class='table-data'>TODO</td></tr>" +
    "<tr><td class='table-rubric'>Источник</td><td class='table-data'>TODO</td></tr>" +
    "</table>",
    "<table class='column-bordered-table'>" +
    "<tr><td class='table-rubric'>Toponym</td><td class='table-data'>{geoname}</td></tr>" +
    "<tr><td class='table-rubric'>Type</td><td class='table-data'>{geotype}</td></tr>" +
    "<tr><td class='table-rubric'>Language</td><td class='table-data'>{geolanguage}</td></tr>" +
    "<tr><td class='table-rubric'>Translation</td><td class='table-data'>{name_translation_en}</td></tr>" +
    "<tr><td class='table-rubric'>Etymology</td><td class='table-data'>TODO</td></tr>" +
    "<tr><td class='table-rubric'>Source</td><td class='table-data'>TODO</td></tr>" +
    "</table>"
]

const RULER_OPTIONS = [{
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
        }
    },
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
        }
    },
]

function transliterate(word) {
    return word.split('').map(function(char) {
        return TRANSLITERATION_TABLE[char] || char;
    }).join("");
}

function isLatinScript(currentLanguage) {
    return currentLanguage > 0;
}

const GEOTYPES = {
    "1": ["река", "river"]
}
const GEOLANGUAGES = {
    "1": ["эвенкийский", "Evenki"]
}
const LANGUAGES = ["RU", "EN"]

var TRANSLITERATION_TABLE = {
    "Ё": "Yo",
    "Й": "I",
    "Ц": "Ts",
    "У": "U",
    "К": "K",
    "Е": "E",
    "Н": "N",
    "Г": "G",
    "Ш": "Sh",
    "Щ": "Sch",
    "З": "Z",
    "Х": "H",
    "Ъ": "'",
    "ё": "yo",
    "й": "i",
    "ц": "ts",
    "у": "u",
    "к": "k",
    "е": "e",
    "н": "n",
    "г": "g",
    "ш": "sh",
    "щ": "sch",
    "з": "z",
    "х": "h",
    "ъ": "'",
    "Ф": "F",
    "Ы": "Y",
    "В": "V",
    "А": "А",
    "П": "P",
    "Р": "R",
    "О": "O",
    "Л": "L",
    "Д": "D",
    "Ж": "Zh",
    "Э": "E",
    "ф": "f",
    "ы": "y",
    "в": "v",
    "а": "a",
    "п": "p",
    "р": "r",
    "о": "o",
    "л": "l",
    "д": "d",
    "ж": "zh",
    "э": "e",
    "Я": "Ya",
    "Ч": "Ch",
    "С": "S",
    "М": "M",
    "И": "I",
    "Т": "T",
    "Ь": "'",
    "Б": "B",
    "Ю": "Yu",
    "я": "ya",
    "ч": "ch",
    "с": "s",
    "м": "m",
    "и": "i",
    "т": "t",
    "ь": "'",
    "б": "b",
    "ю": "yu"
};


MENU_LIST_VIEW = ["Список", "List"]