#!/bin/bash
set -e
test -f build.xml || (echo Please run this script from the root of the checkout.; exit 1)
umask 077
mkdir -p fifoset
chmod go-rwx fifoset
rm -f fifoset/client* fifoset/server*
for x in "" `seq 0 19`; do mkfifo fifoset/client$x; mkfifo fifoset/server$x; done
