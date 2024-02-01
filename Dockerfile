FROM node:21.1.0-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm ci --omit=dev
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]

#this is a comment
