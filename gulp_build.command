#!/bin/bash

# Give this file permission to be executed. chmod u+x gulp_build.command should do that

cd "$(dirname "$BASH_SOURCE")" || {
    echo "Error getting script directory" >&2
    exit 1
}

gulp build