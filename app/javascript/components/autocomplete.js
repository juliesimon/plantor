// app/javascript/components/autocomplete.js
function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var plantAddress = document.getElementById('plant_address');

    if (plantAddress) {
      var autocomplete = new google.maps.places.Autocomplete(plantAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(plantAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}
export { autocomplete };
