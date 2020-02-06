FROM fedora:31

RUN dnf install -y npm
RUN npm install json-server

RUN mkdir /json-server && mkdir /json-server/data
ADD resources/run.sh /json-server/run.sh
ADD resources/server.js /json-server/server.js
RUN chown -R 9000 /json-server

USER 9000

WORKDIR /json-server

EXPOSE 3000

ENTRYPOINT ["sh", "/json-server/run.sh"]
