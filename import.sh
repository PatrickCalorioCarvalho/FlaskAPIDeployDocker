cd dockerIso
docker stop MyFlaskAPI
docker remove MyFlaskAPI
docker image remove flask-rest-api:latest
docker load -i flask-rest-api.tar
docker run -d --name MyFlaskAPI -p 5000:5000 flask-rest-api