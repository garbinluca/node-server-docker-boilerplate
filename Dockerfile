FROM yarnpkg/node-yarn

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .

# RUN yarn install && yarn run build
RUN yarn install

EXPOSE 3000

CMD [ "node", "./server.js" ]
