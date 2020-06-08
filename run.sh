clear
echo "Initiating DOCKER BUILD of FT_SERVER image..."
sudo docker build -t                    ft_server .
echo "Running FT_SERVER container..."
sudo docker run -p 80:80 -p 443:443 -it   ft_server