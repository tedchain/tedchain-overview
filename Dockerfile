FROM node:4.6

RUN mkdir /tedchain
ADD package.json /tedchain/
ADD main.js /tedchain/

RUN cd /tedchain && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /tedchain && npm install && PEERS=$PEERS npm start