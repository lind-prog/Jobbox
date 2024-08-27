import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    marker: Array,
    latitude: Number,
    longitude: Number
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/titizzy/cm0b493nv00pv01qtglrn5rcw",
      center: [this.longitudeValue, this.latitudeValue],
      zoom: 17
    })

    this.markers = this.markersValue.map(marker => ({
      ...marker,
      element: this.#createMarkerElement(marker),
      mapMarker: null
    }));

    this.marker = this.markerValue.map(marker => ({
      ...marker,
      element: this.#createMarkerElement(marker),
      mapMarker: null
    }));

    this.#addMarkersToMap()
    this.#addMarkersToOffer()
    this.#fitMapToMarkers()

    this.element.addEventListener('change', this.#filterMarkers.bind(this));
  }

  #createMarkerElement(marker) {
    const customMarker = document.createElement("div");
    customMarker.innerHTML = marker.marker_html;
    return customMarker;
  }

  #addMarkersToMap() {
    this.markers.forEach(marker => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html);
      marker.mapMarker = new mapboxgl.Marker(marker.element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map);
    });
  }

  #addMarkersToOffer() {
    this.marker.forEach(marker => {
      marker.mapMarker = new mapboxgl.Marker(marker.element)
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map);
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }

  #filterMarkers() {
    const selectedFilters = Array.from(document.querySelectorAll('.filter-checkbox:checked'))
    .map(checkbox => checkbox.dataset.filter);

    this.markers.forEach(marker => {
      if (selectedFilters.length === 0 || selectedFilters.includes(marker.type)) {
        marker.mapMarker.getElement().style.display = 'block';
        if (!marker.mapMarker.getMap()) {
          marker.mapMarker.addTo(this.map);
        }
      } else {
        marker.mapMarker.getElement().style.display = 'none';
      }
    });
  }
}
