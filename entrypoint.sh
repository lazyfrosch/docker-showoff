#!/bin/bash

set -e

: ${USER:=showoff}
: ${UID:=1000}
: ${GID:=1000}
: ${WORKDIR:=/showoff}

if [ "$1" = showoff ]; then
    if [ `stat -c%u "$WORKDIR"` -eq 0 ]; then
        chown "$UID:$GID" "$WORKDIR"
    fi

    cd "$WORKDIR"
    exec gosu "$UID:$GID" "$@"
else
    exec "$@"
fi
