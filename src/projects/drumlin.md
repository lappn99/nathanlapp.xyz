---
title: Drumlin
description: "A native library for building interactive mapping (GIS) applications: raster tile streaming and caching, and raster and vector datasets via GDAL."
image: Media/drumlin.png
---

# Drumlin

::: project-info
Status
:   Active development

Source
:   [github.com/lappn99/drumlin](https://github.com/lappn99/drumlin)
:::

I'm a big fan of maps and geography in general. After working in Geographic Information Systems (GIS) for a while, my affection for them only grew, and I began to realise the potential GIS has beyond strictly the sciences. I think the industry as a whole will get more attention in the coming years.

That potential can be realised by integrating GIS into applications. The web sees a lot of this, with [Leaflet](https://leafletjs.com/) being the most popular tool; it's also one of the few JavaScript libraries I admire.

I wanted a tool like that, but native, so I started making *Drumlin*, a library for building interactive mapping applications. It's nowhere near a fully fledged GIS, but I'm pretty happy with it so far.

### Features

* Raster tile streaming and caching from different sources
* Loading raster datasets via GDAL
* Loading vector datasets via GDAL
    * Only lines and points are supported right now

It is named after the beautiful [drumlin field in and around Peterborough, Ontario](http://ontariogeoscience.net/regions/getawaycountry/sites/peterboroughdrumlins.html), and specifically the one [right next to Trent University](https://www.trentu.ca/natureareas/maps-physical-environment/lady-eaton-drumlin-nature-area).

![Peterborough with a vector line dataset of census tracts, rendered in *Drumlin*](Media/drumlin.png)
