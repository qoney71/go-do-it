FROM node:alpine3.20

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]   # package.json 里已经有 "start": "node index.js"
