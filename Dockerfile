FROM node:14-alpine

WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json .

RUN npm i
COPY . ./
EXPOSE 3000

CMD [ "pm2-runtime", "npm", "--", "start" ]