# USE AT YOUR OWN RISK
# This will stop, delete, and create some fresh running containers

echo '# docker ps -a'
docker ps -a

echo ''
echo '# stop running containers'
docker stop `docker ps --no-trunc -q`

echo ''
echo '# delete all containers'
docker rm `docker ps --no-trunc -aq`

echo ''
echo '# starting up fresh containers'
docker run -d -p 2822:2812 -p 127.0.0.1:222:22 centos-monit-ansible
docker run -d -p 2832:2812 -p 127.0.0.1:322:22 ubuntu-monit-ansible

echo ''
echo '# docker ps -a'
docker ps -a
