sudo docker stop                $(sudo docker container ls -a -q) 000
sudo docker container rm        $(sudo docker container ls -a -q) 000
sudo docker image rm            $(sudo docker image ls -a -q) 000
sudo docker image ls -a
sudo docker container ls -a
