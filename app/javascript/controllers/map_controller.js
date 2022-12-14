import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mjb1000/cl7ke1xvu000a14pbw4sa9j3i"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }


    #addMarkersToMap() {
      this.markersValue.forEach((marker) => {
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .addTo(this.map)
  })
}

    #fitMapToMarkers() {
      const bounds = new mapboxgl.LngLatBounds()
      this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
      this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
}
}

// import { Controller } from "@hotwired/stimulus"

// export default class extends Controller {
//   static values = {
//     apiKey: String,
//     markers: Array
//   }

//   connect() {
//     mapboxgl.accessToken = this.apiKeyValue

//     this.map = new mapboxgl.Map({
//       container: this.element,
//       style: "mapbox://styles/mapbox/streets-v10"
//     })
//   }
// }

// connect() {
//   // [...]
//   this.#addMarkersToMap()
//   this.#fitMapToMarkers()
// }

// #addMarkersToMap() {
//   this.markersValue.forEach((marker) => {
//     new mapboxgl.Marker()
//       .setLngLat([ marker.lng, marker.lat ])
//       .addTo(this.map)
//   })
// }

// #fitMapToMarkers() {
//   const bounds = new mapboxgl.LngLatBounds()
//   this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
//   this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
// }
