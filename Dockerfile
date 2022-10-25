FROM          node:16
RUN           mkdir /app
WORKDIR       /app
RUN           curl -L -o rds-combined-ca-bundle.pem https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem
COPY          node_modules/ /app/node_modules/
COPY          server.js /app
ENTRYPOINT    ["node", "server.js"]
