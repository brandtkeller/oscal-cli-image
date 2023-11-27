# OSCAL-CLI-Image

Lightweight image wrapper to get snapshots of the OSCAL-CLI into a container image for use locally or in pipelines. 

## Usage

```
# switch to the target directory for the OSCAL file
cd my-directory

#Run the OSCAL-CLI from a container image using docker
docker run --rm --name oscal-cli -v $PWD:/tmp ghcr.io/brandtkeller/image/oscal-cli:20231127 component-definition validate /tmp/oscal-component.yaml
```