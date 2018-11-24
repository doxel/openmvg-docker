# openmvg-docker

Run [openMVG](https://github.com/openmvg/openMVG) commands in docker containers.

Copyright (C) 2018 [Alsenet SA](http://www.alsenet.com)
                     
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
                     
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.
                 
You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

## BUILD
```
make
```

## INSTALL
```
PREFIX=/usr/local make install
```

## USE
For example:
```
openMVG_main_SfMInit_ImageListing -i /mnt/segment/images -o /mnt/segment/openMVG
```
or:
```
DOCKER_OPTIONS="-v /mnt:/mnt -it --rm=true" openMVG_main_SfMInit_ImageListing -i /mnt/segment/images -o /mnt/segment/openMVG
```

## NOTES
You can set various docker-run options using DOCKER_OPTIONS environment variable eg: --cpus 0.5

Default docker-run options are:
```
DOCKER_OPTIONS="-v /mnt:/mnt -it --rm=true"
```
