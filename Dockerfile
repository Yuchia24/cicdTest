FROM node:14.16.1
LABEL repo="cicdtest"
COPY . /var/www/cicdTest

WORKDIR /var/www/cicdTest

RUN npm install
RUN mkdir /logs

EXPOSE 3000

CMD npm run start >/logs/stdout.log 2>/logs/stderr.log
