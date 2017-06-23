FROM node:6.9
LABEL maintainer="howieburger"

# Install vim
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app
RUN npm install

# Bundle app source
COPY . /usr/src/app

# Expose publc port and run npm command
EXPOSE 3000
CMD ["npm", "start"]