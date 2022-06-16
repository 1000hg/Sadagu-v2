FROM node:16.13.2

LABEL author="alxzkf123@gmail.com"

ENV NODE_ENV=production
ENV PORT=3000

RUN mkdir /app

WORKDIR /app
COPY . /app

RUN npm install

EXPOSE ${PORT}

CMD ["npm", "start"]