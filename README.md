landsat_stack
=============
Example time series stacks of Landsat data stored in tarballs compressed with [bzip2](https://en.wikipedia.org/wiki/Bzip2) or [gzip](https://en.wikipedia.org/wiki/Gzip).

## Locations

Downloads are hosted on my university's FTP server.

- Harvard Forest, Massachusetts, USA (P013-R030)
    + [Footprint](p013r030_bbox.geojson)
    + [Download image stack](http://ftp-earth.bu.edu/public/ceholden/landsat_stacks/p013r030_HarvardForest/p013r030.tar.bz2) 167MB
    + [Download result files](http://ftp-earth.bu.edu/public/ceholden/landsat_stacks/p013r030_HarvardForest/p013r030_results.tar.gz) 352MB
        + "CCDCesque" results run with [YATSM](github.com/ceholden/yatsm):
    + [Download result maps](http://ftp-earth.bu.edu/public/ceholden/landsat_stacks/p013r030_HarvardForest/p013r030_maps.tar.gz) 6MB
        + "CCDCesque" result change maps (number of changes, date of first and last change detected) and predicted "synthetic" images:
    + Stack pattern: `L*stack`
    + File format: ENVI BSQ
    + Size: 300x300 pixels x 423 images
- Forest in Colorado, USA (P035-R032)
    + [Footprint](p035r032_bbox.geojson)
    + [Download](http://ftp-earth.bu.edu/public/ceholden/landsat_stacks/p035r032.tar.bz2) 12MB
    + Stack pattern: `L*stack.gtif`
    + File format: GeoTIFF
    + Size: 61x61 pixels x 447 images
- Chiapas, Mexico (P022-R049)
    + [Footprint](p022r049_bbox.geojson)
    + [Download](http://ftp-earth.bu.edu/public/ceholden/landsat_stacks/p022r049.tar.bz2) 327MB
    + Stack pattern: `L*stack`
    + File format: ENVI BIP
    + Size: 250x250 pixels x 320 images
    + Model results (for testing, don't consider them "good" results necessarily)
        + CCDC: `images/TSFitMap`
        + CCDCesque via YATSM: `images/YATSM`

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
        * 0 - clear land
        * 1 - clear water
        * 2 - cloud
        * 3 - snow
        * 4 - shadow
        * 255 - NoData

Either:

- "ENVI" format band-interleave by pixel (BIP)
- GeoTIFF

## Example:

Here is an example directory listing of the `p013r030` dataset, when extracted:

```
p013r030/
└── subset
    ├── cache
    ├── LE70130301999211EDC00
    │   ├── LE70130301999211EDC00_MTL.txt
    │   ├── LE70130301999211EDC00_stack
    │   ├── LE70130301999211EDC00_stack.aux.xml
    │   └── LE70130301999211EDC00_stack.hdr
    ├── LE70130301999243EDC00
    │   ├── LE70130301999243EDC00_MTL.txt
    │   ├── LE70130301999243EDC00_stack
    │   ├── LE70130301999243EDC00_stack.aux.xml
    │   └── LE70130301999243EDC00_stack.hdr
    ├── LE70130301999275EDC01

...

├── LT50130302011316GNC01
│   ├── LT50130302011316GNC01_MTL.txt
│   ├── LT50130302011316GNC01_stack
│   ├── LT50130302011316GNC01_stack.aux.xml
│   └── LT50130302011316GNC01_stack.hdr
```
