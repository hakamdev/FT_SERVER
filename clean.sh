docker stop                $(docker container ls -a -q) 000
docker container rm        $(docker container ls -a -q) 000
docker image rm            $(docker image ls -a -q) 000
docker image ls -a
docker container ls -a
