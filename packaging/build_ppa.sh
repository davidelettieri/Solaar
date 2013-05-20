#!/bin/sh

set -e

cd "$(dirname "$0")/.."

DISTRIBUTION=ubuntu
DIST_RELEASE=precise
DEBIAN_FILES_EXTRA="$PWD/packaging/ubuntu"
BUILD_EXTRA=ppa1
DEBUILD_ARGS="-S -sa"
. packaging/build_deb.sh

dput solaar-snapshots-ppa solaar_*_source.changes
