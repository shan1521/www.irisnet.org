FROM keymetrics/pm2:latest-alpine

ADD . /www.irisnet.org
WORKDIR /www.irisnet.org
RUN npm i -g cnpm --registry=https://registry.npm.taobao.org && cnpm i && cnpm run build
EXPOSE 3000
ENV NODE_ENV="production"
CMD ["pm2-runtime", "server.js"]