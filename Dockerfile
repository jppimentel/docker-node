# version machine
FROM node:alpine            

# machine directory
WORKDIR /usr/app

# copy all files to WORKDIR
COPY package*.json ./
# run this command after copy
RUN npm install

# copy all files after install
COPY . .

# define the port that container  should list on  
EXPOSE 3000

# set the default executable  and parameters  for this executing container (created in package.json)
# in package.json: {"start": "node  index.js"}
# in docker-compose up -> change to {"start": "nodemon -L src/index.js"}
CMD ["npm", "start"]