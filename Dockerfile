FROM node:16 as base
WORKDIR /home/node/app
COPY package*.json ./
RUN npm i
RUN npm i -g serverless
COPY . .

FROM base as production
ENV NODE_PATH=./build
RUN npm run build