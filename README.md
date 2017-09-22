showoff in Docker
=================

This is a Docker container to run [showoff](https://puppetlabs.github.io/showoff/) inside a Docker container.

## How to use

    docker pull lazyfrosch/showoff

    curl -LsS https://github.com/lazyfrosch/docker-showoff/raw/master/showoff.example.sh \
      >"$HOME/bin/showoff"
    chmod +x "$HOME/bin/showoff"

Now change to the showoff presentation you want to serve.

    showoff
    # or
    showoff serve --help

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

## What it does

* Runs showoff in the container
* Mounts the current PWD into /showoff inside the container
* Copies USER and sets UID/GID via environment so that showoff shares the same (filesystem) permissions
* Opens port 9090 to public

## License

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
