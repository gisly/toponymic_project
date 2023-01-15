$(document).ready( function () {
    var mapDiv = document.getElementById('map');
    var objectName = mapDiv.getAttribute('data-title');
    var latitude = mapDiv.getAttribute('data-latitude');
    var longitude = mapDiv.getAttribute('data-longitude');
    var map = L.map('map');
    map.setView([latitude, longitude], 13);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    L.marker([latitude, longitude]).addTo(map)
        .bindPopup(objectName)
        .openPopup();
    L.control.scale().addTo(map);

 });