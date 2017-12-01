import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  const styles =
     [
      {
          "featureType": "all",
          "elementType": "labels.text",
          "stylers": [
              {
                  "visibility": "off"
              }
          ]
      },
      {
          "featureType": "all",
          "elementType": "labels.icon",
          "stylers": [
              {
                  "visibility": "off"
              }
          ]
      },
      {
          "featureType": "landscape",
          "elementType": "geometry.fill",
          "stylers": [
              {
                  "color": "#f1efe8"
              }
          ]
      },
      {
          "featureType": "landscape.man_made",
          "elementType": "geometry.fill",
          "stylers": [
              {
                  "visibility": "on"
              },
              {
                  "gamma": "1.19"
              }
          ]
      },
      {
          "featureType": "landscape.man_made",
          "elementType": "geometry.stroke",
          "stylers": [
              {
                  "visibility": "on"
              },
              {
                  "gamma": "0.00"
              },
              {
                  "weight": "2.07"
              }
          ]
      },
      {
          "featureType": "road.highway",
          "elementType": "geometry.fill",
          "stylers": [
              {
                  "color": "#b2ac83"
              }
          ]
      },
      {
          "featureType": "road.highway",
          "elementType": "geometry.stroke",
          "stylers": [
              {
                  "color": "#b2ac83"
              }
          ]
      },
      {
          "featureType": "water",
          "elementType": "geometry.fill",
          "stylers": [
              {
                  "color": "#8ac0c4"
              }
          ]
      }
  ];
  map.addStyle({
    styles: styles,
    mapTypeId: 'map_style'
  });
  map.setStyle('map_style');
  map.addMarkers(markers)

  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }

  // const myLatLng = new google.maps.LatLng(place[1], place[2]);
  // const marker = new google.maps.Marker({
  //       position: myLatLng,
  //       map: map
  // });

  // const marker = new google.maps.Marker({

  // });

  //  map.addListener('mouseover', function() {
  //   console.log('event.currentTarget');
  //   // window.location.href = marker.url;
  // });
  map.markers.forEach((marker) => {
    marker.addListener('mouseover', () => {
      console.log(marker);
      infowindow.setContent(contentStringCal);
      infoWindow.open(map,marker);
    });
  });

}
autocomplete();





// document.querySelectorAll(".card").forEach((card) => {
//   card.addEventListener("mouseover", (event) => {
//     // marker.setIcon('logo.png')
//     // event.currentTarget.classList.toggle("test");
//   });
// });

  // markers[0].addListener('click', function() {
  //   console.log("yes");
  //   markers.setIcon("logo.png");
  //   infowindow.open(map);
  //   });


