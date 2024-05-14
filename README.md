# GeoBlacklight Development

## Quick Start

* GeoBlacklight v4.4
* BlacklightLando v0.3.0
* Blacklight::Allmaps v0.4.0
* GeoBlacklight Sidecar Images v1.0.0

### Steps

#### 1. Clone this Repository

```bash
git clone https://github.com/ewlarson/gbl-dev.git
cd gbl-dev
```

#### 2. Start Solr

```bash
lando start
```

[View Solr](http://localhost:54701)

#### 3. Start Rails

```bash
bin/rails s
```

[View Rails App](http://localhost:3000)

#### 4. Harvest GeoBlacklight Docs

From GeoBlacklight

```bash
bin/rails geoblacklight:index:seed[remote]
```

#### 5. Blacklight::Allmaps Steps

Harvest fixtures from Blacklight::Allmaps

```bash
SOLR_URL=http://localhost:54701/solr/blacklight-core-dev LIGHT=geoblacklight bin/rails blacklight_allmaps:index:gbl_fixtures
```

Harvest IIIF Annotations

```bash
bin/rails blacklight_allmaps:sidecars:harvest:allmaps
```

Populate the Georeferenced Facet

```bash
bin/rails blacklight_allmaps:index:georeferenced_facet
```

[Allmaps example](http://localhost:3000/catalog/p16022coll230:360)

#### 5. GeoBlacklight Sidecar Images

Harvest Thumbnails

```bash
bin/rails gblsci:images:harvest_all
```

[Thumbnails in search results](http://localhost:3000/?search_field=all_fields)