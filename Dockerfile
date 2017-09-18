FROM node
COPY ./ /opt/code
WORKDIR /opt/code
RUN npm install express superagent ejs mysql
EXPOSE 3000 3000 
CMD node server.js
