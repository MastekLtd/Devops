docker run -p 11990:11990 -p 11991:6556 --name organisation-web -h organisation-web -v /mnt/gluster/repo/docker/config/services:/home/devops/config/services -v /mnt/gluster/repo/Build/organisation-web/:/usr/share/ organisation-web