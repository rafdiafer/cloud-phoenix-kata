FROM node:8
LABEL author = "Rafa Diaz" version="1.0"
ENV NODE_ENV = "Prod"

# Create App directory:
RUN mkdir /usr/src/app

WORKDIR /usr/src/app

# Install App:
COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "app.js", "--", "npm", "start"]