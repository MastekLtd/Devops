docker run -p 8092:8092 -p 9092:6556 --name project-assignment -h project-assignment -v /vshare/docker/config/services:/home/devops/config/services -v /vshare/Build/project-assignment/:/usr/share/ project-assignment