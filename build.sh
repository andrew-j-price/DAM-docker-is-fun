# Build the base images
docker build --tag="base-centos-7" ./base-images/base-centos-7/
docker build --tag="base-ubuntu-14.04" ./base-images/base-ubuntu-14.04/

# Build the images the containers will run from
docker build --tag="ubuntu-monit-ansible" ./examples/ubuntu-monit-ansible/
