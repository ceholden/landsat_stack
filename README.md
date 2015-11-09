landsat_stack
=============
Example time series stacks of Landsat data stored in tarballs compressed with [bzip2](https://en.wikipedia.org/wiki/Bzip2).

## Locations

Downloads are hosted on my university's FTP server.

- Harvard Forest, Massachusetts, USA (P013-R030)
    + [Footprint](p013r030_bbox.geojson)
    + [Download](http://ftp-earth.bu.edu/public/ceholden/landsat_stacks/p013r030.tar.bz2) 167M
- Forest in Colorado, USA (P035-R032)
    + [Footprint](p035r032_bbox.geojson)
    + [Download](http://ftp-earth.bu.edu/public/ceholden/landsat_stacks/p035r032.tar.bz2) 12M
- Chiapas, Mexico (P022-R049)
    + [Footprint](p022r049_bbox.geojson)
    + [Download](http://ftp-earth.bu.edu/public/ceholden/landsat_stacks/p022r049.tar.bz2) 127M

## Format:

- 8 band images
    + Band 1 SR (SR * 10000)
    + Band 2 SR (SR * 10000)
    + Band 3 SR (SR * 10000)
    + Band 4 SR (SR * 10000)
    + Band 5 SR (SR * 10000)
    + Band 7 SR (SR * 10000)
    + Band 6 Thermal Brightness (C * 100)
    + Fmask

Either:
    - "ENVI" format band-interleave by pixel (BIP)
    - GeoTIFF
