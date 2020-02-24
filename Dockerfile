FROM node:12-stretch

USER node
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin
WORKDIR /home/node

RUN curl -OL http://downloads.mongodb.org/linux/mongodb-linux-x86_64-4.0.12.tgz
RUN tar -zxvf mongodb-linux-x86_64-4.0.12.tgz
RUN mkdir mongo
RUN mv ./mongodb-linux-x86_64-4.0.12/bin ./mongo

CMD npx run-rs --dbpath /home/node/mongo-data --mongod /home/node/mongo/bin/mongod --host $HOSTNAME

EXPOSE 27017 27018 27019