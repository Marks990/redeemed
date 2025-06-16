# Buildah


## Requirements for a buildah container image
install buildah and podman

## Set storage to build image
STORAGE_DRIVER=vfs

## Build an image in a container
buildah bud --build-arg BASE_IMAGE=redhat/ubi9:latest --storage-driver=vfs -f simple_Dockerfile -t meme:987 .
buildah tag <image_name> <registry_name>/<namespace>/<image_name>:<tag>

## List image (Requires podman)
buildah images

## Store images in docker 
buildah push meme oci-archive:/app/meme.tar:/username/marky:12456
docker load < meme.tar

## Login to Docker and send it directly after a build
buildah tag ubi9_build:987 marks990/ubi9_build:987
buildah login -u username -p password
buildah push /username/marky:12456