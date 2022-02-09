FROM node:14

WORKDIR /code

COPY index.js index.js
COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install --production

CMD ["node", "index.js"]