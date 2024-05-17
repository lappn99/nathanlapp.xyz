## Drumlin

[github link](https://github.com/lappn99/drumlin) 

_Active development_

---

Im a big fan of maps and geography in general. After working in the realm of Geographic Information Systems (GIS) for a bit my affection for them only grew and I began to realise the potential that GIS has beyond the realm of strictly the sciences. I think the industry as a whole will get more attention in the coming years.

This potential can be realised through integrating GIS into applications. The web domain sees alot of this with [leaflet](https://leafletjs.com/) being the most popular tool, it is also one of the few javascript libraries I admire. 

I would like to see such a tool but natively, so I started making *Drumlin*, a library for making interactive mapping applications. Its no where near being a fully fledged GIS but im pretty happy with is so far. 

Features:

* Raster tile streaming and caching from different sources
* Loading Raster datasets via GDAL
* Loading Vector datasets via GDAL
    * Only lines and points supported right now


It is named after the beautiful [drumlin field in and around Peterborough, Ontario](http://ontariogeoscience.net/regions/getawaycountry/sites/peterboroughdrumlins.html), and specifically the one [right next to Trent University](https://www.trentu.ca/natureareas/maps-physical-environment/lady-eaton-drumlin-nature-area).


---

![Peterborough with vector line dataset of census tracts rendered in *Drumlin*](https://nathanlapp.xyz/media/drumlin_example.png)