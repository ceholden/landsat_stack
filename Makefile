help:
	@echo "Data downloader"

p013r030_download:
	mkdir -p download
	wget -N -P download http://ftp-earth.bu.edu/public/ceholden/landsat_stacks/p013r030_HarvardForest/p013r030_images.tar.bz2
	wget -N -P download http://ftp-earth.bu.edu/public/ceholden/landsat_stacks/p013r030_HarvardForest/p013r030_results.tar.gz
	wget -N -P download http://ftp-earth.bu.edu/public/ceholden/landsat_stacks/p013r030_HarvardForest/p013r030_maps.tar.gz

p013r030: p013r030_download
	tar -xvf download/p013r030_images.tar.bz2
	tar -xvf download/p013r030_maps.tar.gz
	tar -xvf download/p013r030_results.tar.gz
