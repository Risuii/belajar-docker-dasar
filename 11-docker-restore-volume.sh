docker volume create mongo-restore-data

docker container run --rm --name ubuntu-restore --mount "type=bind,source=/Users/risui/Documents/Docker/Belajar/backup,destination=/backup" --mount "type=volume,source=mongo-restore-data,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

untuk ngecheck apakah berhasil

docker container create --name mongo-resotre-data --mount "type=volume,source=mongo-restore-data,destination=/data/db" --publish 27020:27017 --env MONGO_INITDB_ROOT_USERNAME --env MONGO_INITDB_ROOT_PASSWORD mongo:latest