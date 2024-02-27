#Use official Node.js image
FROM node:20

#Set working directory
WORKDIR /app

#Copy application file
COPY . /app

#Install application deps
RUN npm install -g npm@latest --silent
RUN npm install --silent

EXPOSE 8000

#Define entry point
CMD [ "npm", "start" ]