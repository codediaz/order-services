FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

RUN npm install -D @nestjs/cli @types/node @types/express

EXPOSE 3000

CMD ["npm", "run", "start:dev"]