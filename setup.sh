#!/bin/bash
mkdir -p build
cd build/
# Download the latest snapshot of the OSCAL CLI
CORE=cli-core-1.0.3-20231026.201107-10-oscal-cli.zip
curl -L -O https://oss.sonatype.org/content/repositories/snapshots/gov/nist/secauto/oscal/tools/oscal-cli/cli-core/1.0.3-SNAPSHOT/$CORE
#unzip
unzip $CORE

cd ../
# Build the container image
docker build -t ghcr.io/brandtkeller/image/oscal-cli:$1 .

docker push ghcr.io/brandtkeller/image/oscal-cli:$1

rm -rf build/*