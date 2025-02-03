FROM node:18-alpine

WORKDIR /app
COPY package.json package-lock.json ./
RUN node -v && npm -v
RUN npm ci --omit=dev
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
