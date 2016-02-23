# Build the base images
docker build --tag="base-centos-7" ./base-images/base-centos-7/
docker build --tag="base-ubuntu-14.04" ./base-images/base-ubuntu-14.04/

# Build the images the containers will run from
docker build --tag="dam-centos" ./examples/dam-centos/
docker build --tag="dam-ubuntu" ./examples/dam-ubuntu/
