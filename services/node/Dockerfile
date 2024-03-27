ARG NODE_VERSION=node:12.0.0-alpine
FROM ${NODE_VERSION}

RUN apk add --no-cache curl vim git bash procps zip
RUN npm config set registry https://registry.npm.taobao.org && npm i -g node-http-server

WORKDIR /www

EXPOSE 9527

ENTRYPOINT ["node-http-server", "port=9527", "verbose=true"]

