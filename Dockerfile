FROM node:14
EXPOSE 3000
WORKDIR /usr/src/app
Volume /usr/src/app
COPY package.json ./
COPY yarn.lock ./
COPY ..
RUN yarn
RUN chmod +x /usr/src/app/wait-for-it.sh
RUN yarn run build
