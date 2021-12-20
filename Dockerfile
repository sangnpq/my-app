FROM node:14-alpine

WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json .

RUN npm i
# RUN npm i -g pm2
COPY . ./
EXPOSE 3000

# CMD [ "pm2", "start", "--name", "my-app", "npm", "--", "start" ]
CMD ["npm", "start"]