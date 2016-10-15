# Dockerfile for graphql-blog-schema

## Description

This is a Dockerfile for creating a Docker image of the GraphQL blog sandbox used on https://learngraphql.com.

## How do I use it?

* Clone this repo and change into the repo directory

```
git clone https://github.com/msgodf/dockerfile-graphql-blog-schema.git
cd dockerfile-graphql-blog-schema
```

* Build the image with `docker build -t graphql-blog-schema .`
* Wait a while while it clones the repo and installs the application
* Run a container from the image with `docker run -p 3000:3000 -d graphql-blog-schema`
* Head to http://localhost:3000 in a browser

## What does it do?

* Takes the official Node.js Docker image as a base
* Installs git
* Clones the repo from https://github.com/kadirahq/graphql-blog-schema
* Runs `npm install`
* Changes the host that Express listens on from `localhost` to `0.0.0.0`
* Runs the application via `npm start` (`ENTRYPOINT` is set to this)

## Why?

* Because I don't like running Node.js on my laptop in order to work through a tutorial.
* Because I like automating, by putting lists of instructions into a Dockerfile (and then creating lists of instructions on how to use the Dockerfile)
