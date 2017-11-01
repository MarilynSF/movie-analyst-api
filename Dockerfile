FROM node
COPY ./ /opt/code
WORKDIR /opt/code
RUN npm install express superagent ejs mysql mocha chai
EXPOSE 3000 3000 
CMD npm start
