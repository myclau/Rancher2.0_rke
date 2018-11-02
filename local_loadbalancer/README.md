# Step

1. Make a self sign cert
2. create folder: mkdir cert
3. cd ./cert
4. sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout myCA.key -out myCA.crt
5. run docker-compose up -d
