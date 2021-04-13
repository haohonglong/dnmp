ARG NODE_VERSION=12.0.0-alpine
FROM ${NODE_VERSION}

RUN apk add --no-cache curl vim git bash procps zip
RUN npm install cnpm -g && npm config set registry https://registry.npm.taobao.org && npm i -g @nestjs/cli 

WORKDIR /www

EXPOSE 3000

ENTRYPOINT ["top", "-b"]
CMD ["-c"]


