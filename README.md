<h1 align="center"> Dark Todoapp </h1>

<p align="center"> This is a simple implementation of a todo app using dark theme style implemented using the
<a href="https://www.phoenixframework.org/"> Phoenix Framework. </a></p>

## Screenshots

![Preview-screenshots](git@github.com:rafaelcascalho/dark-todoapp-phoenix.git/blob/master/screenshots.png)

## Prerequisites

### :warning: Required :warning:

Elixir
To install `elixir` follow the instructions in [this guide](https://elixir-lang.org/install.html).
Check your version with

```
$ elixir -v
Erlang/OTP 22 [erts-10.7] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:1] [hipe]

Elixir 1.10.2 (compiled with Erlang/OTP 21)
```

NodeJs
To install `node` and `npm` just [download it here](https://nodejs.org/en/) or
[follow this tutorial](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm).
Check your version with

```
$ node -v
v12.16.1
```

### Optional :glasses:

Docker and docker-compose

```
$ docker -v
Docker version 19.03.8, build afacb8b7f0

$ docker-compose -v
docker-compose version 1.25.4, build 8d51620a
```

## :rocket: Getting started :rocket:

### Setup your database :woman_running:

Create and migrate your database with

```
mix ecto.setup
```

### Install dependencies

If you didn't have dependencies installed with the project generation, install `Phoenix` dependencies with

```
mix deps.get
```

Install `NodeJs` dependencies with

```
cd assets && npm install
```

### Run tests

Run tests with

```
mix test
```

### Run cowboy server

Run the server with

```
mix phx.server
```

## Next steps

### Ops

- Enable CI
- Deploy

### Backend

- Update task status functionality
- Create seeders
- Create test coverage

### Frontend

- Create button to change task status
- Customize buttons
- Customize table
- Customize layout (header / footer / pages background)

## :whale: IF you're using docker with docker-compose :whale:

This is an example of my docker-compose file

```
version: '3'

services:
  psql:
    image: postgres
    restart: unless-stopped
    environment:
      POSTGRES_PASSWORD: 'postgres'
    ports:
      - '5432:5432'
    volumes:
      - ./data:/var/lib/postgres/data
```

## Built with

- [Phoenix](https://www.phoenixframework.org/) - Phoenix framework
- [Editorconfig](https://editorconfig.org/) - Code style enforcer
- [Prettier](https://prettier.io/) - Code formatter
- [Docker](https://www.docker.com/) - Virtualizer of containers
- [Docker Compose](https://docs.docker.com/compose/) - Containers manager
