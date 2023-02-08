docker network create --driver bridge mongo-network

docker container create --name mongodb-network --network mongo-network --env MONGO_INITDB_ROOT_USERNAME=faris --env MONGO_INITDB_ROOT_PASSWORD=faris mongo:latest

docker image pull mongo-express:latest

ME_CONFIG_MONGODB_URL: mongodb://<username>:<password>@<nama-container>:<port-container>/

docker container create --name mongodb-express --network mongo-network --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://faris:faris@mongodb-network:27017/" mongo-express:latest

menghapus container dari network

docker network disconnect <nama-network> <nama-container>

docker network disconnect mongo-network mongodb-network

docker network connect <nama-network> <nama-container>

docker network connect mongo-network mongodb-network