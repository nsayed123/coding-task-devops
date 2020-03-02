FROM node:10-alpine
  
RUN mkdir -p /home/node/app/

WORKDIR /home/node/app

COPY package.json /home/node/app
COPY . .
#USER node
#RUN npm cache clean -f
#RUN npm config set registry http://registry.npmjs.org/
#RUN npm config set strict-ssl false
#RUN npm install --package-lock
#RUN npm install

#RUN yarn install

#COPY --chown=node:node . .

EXPOSE 5000

CMD [ "node", "app.js" ]
