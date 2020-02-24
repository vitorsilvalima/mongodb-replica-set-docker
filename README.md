# Dockerfile for MongoDB Replica Set

This project aims to create a MongoDB replica set for testing purposes.
DO NOT USE IT IN PRODUCTION

# Usage
## with docker
```sh
docker build . -t mongo-rs -f Dockerfile
docker run --hostname localhost -p 27017:27017 -p 27018:27018 -p 27019:27019 mongo-rs
```

### width docker-compose
```sh
docker-compose up
```

### connection URI
``mongodb://localhost:27017,localhost:27018,localhost:27019?replicaSet=rs``

# Credits
This project uses run-rs under the hood to create the replica set with zero-config required