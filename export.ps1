pushd C:\Users\Patrick\Desktop\FlaskAPIDeployDocker
docker image remove flask-rest-api:latest
rm .\flask-rest-api.tar
docker build --no-cache --platform=linux/arm64/v8 -t flask-rest-api . 
docker save -o ./flask-rest-api.tar flask-rest-api:latest
scp .\flask-rest-api.tar patrick@192.168.18.52:/home/patrick/dockerIso
