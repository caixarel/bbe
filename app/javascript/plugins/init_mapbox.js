import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import Directions from '@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions';


const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    var directions = new Directions({
      accessToken: mapElement.dataset.mapboxApiKey,
      unit: 'metric',
      profile: 'mapbox/cycling',
      // controls:{instructions:false},
      interactive: false
    });

    map.addControl(directions, 'top-left');


    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(mapElement.dataset)
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '25px';
      element.style.height = '25px';
      element.addEventListener('click',()=>{
        popup._content.classList.toggle('d-none')
      })
      popup._content.firstElementChild.lastElementChild.addEventListener('click',()=>{
        popup._content.classList.toggle('d-none')
        directions.setDestination([popup._content.firstElementChild.dataset.lng, popup._content.firstElementChild.dataset.lat])
      })
      new mapboxgl.Marker(element)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(map);
    });
    fitMapToMarkers(map, markers);
    document.querySelectorAll('.fit').forEach(card=>{
      card.addEventListener('click', () => {
        directions.setDestination([card.dataset.lng, card.dataset.lat])
        map.fitBounds([
          [card.dataset.lng, card.dataset.lat], // southwestern corner of the bounds
          [card.dataset.lng,card.dataset.lat] // northeastern corner of the bounds
        ],
          { padding: 70, maxZoom: 12, duration: 2000 }
        );
      });
    })
  }


};

export { initMapbox };
