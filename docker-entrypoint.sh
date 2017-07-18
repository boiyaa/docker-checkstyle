#!/bin/sh
set -e

case "$1" in
  *sh)
    exec "$@"
    ;;
  *)
    exec java -jar /opt/lib/checkstyle.jar "$@"
    ;;
esac
