# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "leaflet", to: "https://cdn.jsdelivr.net/npm/leaflet@1.9.4/dist/leaflet.js", preload: true
pin "leaflet-fullscreen", to: "https://cdn.jsdelivr.net/npm/leaflet-fullscreen@1.0.2/dist/Leaflet.fullscreen.min.js", preload: true
pin "@allmaps/leaflet", to: "https://cdn.jsdelivr.net/npm/@allmaps/leaflet/dist/bundled/allmaps-leaflet-1.9.umd.js", preload: true
pin_all_from File.expand_path("../app/javascript/blacklight/allmaps", __dir__), under: "blacklight-allmaps"
