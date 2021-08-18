FROM node:13-alpine

RUN mkdir -p /home/proshop

COPY ./ /home/proshop

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/proshop

# will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["npm", "start"]
