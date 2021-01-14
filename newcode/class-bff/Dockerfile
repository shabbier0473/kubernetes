FROM keymetrics/pm2:latest-alpine

# Bundle APP files
COPY . .
COPY package.json .
COPY server.js .

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production
RUN npm install pm2 -g
# Expose the listening port of your app
EXPOSE 3002

# Show current folder structure in logs
RUN ls -al -R
#CMD ["pm2-runtime", "server.js"]
CMD [ "sh", "-c", "pm2-runtime  server.js --name bff-1" ]

