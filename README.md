# README

GeoBlacklight Development

## Quick Start

### Steps

#### 1. Start Solr
```bash
lando start
```
[Solr running at http://localhost:54701](http://localhost:54701)

#### 2. Start Rails

```bash
bin/rails s
```

[Rails running at http://localhost:3000](http://localhost:3000)

#### 3. Harvest GeoBlacklight Docs

```bash
bin/rails geoblacklight:index:seed[remote]
```