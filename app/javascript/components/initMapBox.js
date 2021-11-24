import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

if (mapElement) {
  // [ ... ]
  fitMapToMarkers(map, markers);
}


const initMapBox =() =>{
  const results = document.querySelector(".text-monospace.lead.text-center.font-weight-bold");
  const button = document.querySelector('.btn.btn-outline-secondary');
  const form = document.querySelector('.form-control');
  console.log(button);
    const newMap = (coordinates) => {
        mapboxgl.accessToken = 'pk.eyJ1IjoiY2FtZWxpYTY3OCIsImEiOiJja3ZtajJ4eXMwNm1sMnBxaHl6N3phNmJlIn0.2t7uQsHWjv1M2Kq1NPnAJQ';
        const map = new mapboxgl.Map({
          container: 'map',
          style: 'mapbox://styles/mapbox/streets-v9',
          center: [coordinates[0], coordinates[1]],
          zoom: 12
        });
        new mapboxgl.Marker()
          .setLngLat([coordinates[0], coordinates[1]])
          .addTo(map);
      };
      
      form.addEventListener('submit', (event) => {
        event.preventDefault();
        results.innerHTML = '';
        const input = event.currentTarget.querySelector(".form-control.flex-grow-1.mr-2")
        fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${input.value}.json?access_token=pk.eyJ1IjoiY2FtZWxpYTY3OCIsImEiOiJja3ZtajJ4eXMwNm1sMnBxaHl6N3phNmJlIn0.2t7uQsHWjv1M2Kq1NPnAJQ`)
          .then(response => response.json())
          .then((data) => {
            console.log(data.features);
            const firstResult = data.features[0];
            const displayGps = `<p>${firstResult.geometry.coordinates}</p>`;
            results.insertAdjacentHTML('beforeend', displayGps);
            console.log(firstResult.geometry.coordinates)
            newMap(firstResult.geometry.coordinates);
          });
      });

}

export {initMapBox};