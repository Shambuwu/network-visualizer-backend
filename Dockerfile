FROM node:latest AS base
WORKDIR /var/app

FROM base AS development
COPY ./package.json ./package-lock.json ./
RUN npm install
CMD ["npm", "run", "start:dev"]

FROM base AS production
COPY ./node_modules ./node_modules
# Service should be started by NGINX when running as production
