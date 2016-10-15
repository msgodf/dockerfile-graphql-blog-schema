FROM node:latest

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/kadirahq/graphql-blog-schema.git

WORKDIR /graphql-blog-schema

RUN git checkout build-schema

RUN npm install

# Change host in server.js, as otherwise it won't be accessible
RUN sed -i "s/localhost/0.0.0.0/g" server.js

VOLUME /graphql-blog-schema

EXPOSE 3000

ENTRYPOINT ["npm", "start"]
