FROM node:16-alpine

ENV NODE_ENV=production


WORKDIR /app

COPY . .

RUN npm install --production

COPY . .
EXPOSE 3000

CMD ["npm", "start"]
