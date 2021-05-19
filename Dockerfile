FROM node:12.16.3

WORKDIR /app

ADD services ./services/
ADD steedos-app ./steedos-app/
ADD steedos-packages ./steedos-packages/
ADD .env .
ADD package.json .
ADD moleculer.config.js .
ADD package.json .
ADD steedos-config.yml .
ADD yarn.lock .

RUN npm config set registry http://registry.npm.taobao.org/

RUN yarn config set registry http://registry.npm.taobao.org/

RUN yarn install --production

ENV NODE_ENV=production

CMD ["yarn", "start"]