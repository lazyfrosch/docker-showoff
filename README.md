showoff in Docker
=================

[![Docker Build Status](https://img.shields.io/docker/build/lazyfrosch/showoff.svg)](https://hub.docker.com/r/lazyfrosch/showoff/)
[![Docker Automated build](https://img.shields.io/docker/automated/lazyfrosch/showoff.svg)](https://hub.docker.com/r/lazyfrosch/showoff/)
[![Docker Pulls](https://img.shields.io/docker/pulls/lazyfrosch/showoff.svg)](https://hub.docker.com/r/lazyfrosch/showoff/)

This is a Docker container to run [showoff](https://puppetlabs.github.io/showoff/) inside a Docker container.

## How to use

```
$ docker pull lazyfrosch/showoff

$ curl -LsS https://github.com/lazyfrosch/docker-showoff/raw/master/showoff.example.sh \
  >"$HOME/bin/showoff"
$ chmod +x "$HOME/bin/showoff"
```

Now change to the showoff presentation you want to serve.

```
showoff
# or
showoff serve --help
```

It should run in foreground like this:

```
-------------------------

Your ShowOff presentation is now starting up.

To view it plainly, visit [ http://localhost:9090 ]

To run it from presenter view, go to: [ http://localhost:9090/presenter ]

-------------------------

== Sinatra (v1.4.8) has taken the stage on 9090 for development with backup from Thin
Thin web server (v1.7.2 codename Bachmanity)
Maximum connections set to 1024
Listening on 0.0.0.0:9090, CTRL+C to stop
```

## Use specific version

Some older versions of showoff are available as tags, please see [the list on DockerHub](https://hub.docker.com/r/lazyfrosch/showoff/tags/).

To use a specific version, use this example, or edit the script manually.
```
TAG=0.9
docker pull lazyfrosch/showoff:"$TAG"
sed -i "s/^TAG=/\0$TAG/" "$HOME/bin/showoff"
```

## What it does

* Runs showoff in the container
* Mounts the current PWD into /showoff inside the container
* Copies USER and sets UID/GID via environment so that showoff shares the same (filesystem) permissions
* Opens port 9090 to public

## Thanks

Thanks to [@widhalmt](https://github.com/widhalmt) for researching and preparation!

## License
```
Copyright (C) 2017 Markus Frosch <markus@lazyfrosch.de>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
```
