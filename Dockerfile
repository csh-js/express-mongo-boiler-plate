
FROM node:slim
USER node
RUN mkdir /home/node/app
WORKDIR /home/node/app
COPY --chown=node:node ./package.json ./
RUN npm install
COPY --chown=node:node ./ ./
CMD ["npm", "run", "dev"]
