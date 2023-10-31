FROM node:18-alpine AS back
LABEL authors="Roxane"
WORKDIR /back
COPY package.json ./
COPY package-lock.json ./
COPY . ./
RUN npm install
CMD ["node", "index2.js"]
EXPOSE 3000

