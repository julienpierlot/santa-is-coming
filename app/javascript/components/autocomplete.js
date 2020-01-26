function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var houseAddress = document.getElementById('house_address');  
    if (houseAddress) {
      var autocomplete = new google.maps.places.Autocomplete(houseAddress, { types: [ 'geocode' ], componentRestrictions: {country: 'fr'} });
      google.maps.event.addDomListener(houseAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
