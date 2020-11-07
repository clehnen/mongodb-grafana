FROM node:12-alpine

# Create app directory
RUN mkdir -p /mongodb-grafana

WORKDIR /mongodb-grafana

# Bundle app source
COPY . .

#RUN apk add build-base
#RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python

RUN npm ci

RUN npm run-script build

CMD npm run server


# Utility Commands
#git pull
#docker build . -t mongodb-grafana
#docker stop mongodb-grafana-container
#docker rm mongodb-grafana
#docker run -d --restart=always --network=host --name=mongodb-grafana-container mongodb-grafana

#docker container prune -f
#docker image prune -f
