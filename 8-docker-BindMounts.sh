docker container create --name <namaContainer> --mount "type=bind,source=folder,destination=folder,readonly" <namaImage>:<tags> #untuk menentukan data atau file yang di transfer dari luar container

docker container create --name mongo-data --publish 27018:27017 --mount "type=bind,source=/Users/risui/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=faris --env MONGO_INITDB_ROOT_PASSWORD=faris mongo:latest