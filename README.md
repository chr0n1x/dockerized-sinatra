# Dockerized Sinatra

> You run `make`, go to http://localhost:8080 -- start coding.

Simple Ruby 3.x Sinatra setup that should, "just work" if you have Docker installed. I've done this so many times that I figured that I would make a template repository for this setup.

## Goals / Purpose

There were a few pain points that I wanted to solve for myself. So I'll divide them into the following two sections.

### What You Get

- A working [Sinatra](https://github.com/sinatra/sinatra) w/ [Rackup](https://github.com/rack/rack) setup
- [Docker](https://www.docker.com/) container that "just works" with [`docker compose`](https://docs.docker.com/compose/)
- An [`entr`](https://eradman.com/entrproject/) setup to run [`rubocop`](https://github.com/rubocop/rubocop) and [`rspec`](https://rspec.info/) to auto-correct and test your code as you write code

### What You DON'T Get

- Direction on how to write Ruby code. For that I highly recommend reading the code/thoughts of better developers like [Sandy Metz](https://sandimetz.com/), [Matz](https://twitter.com/yukihiro_matz) and blogs like [Thoughtbot](https://thoughtbot.com/blog)
- A production-ready codebase. There are **so** many ways that people like to configure their Ruby apps/servers (puma, rackup, unicorn, etc) & various [OSI abstraction layers](https://en.wikipedia.org/wiki/OSI_model) that I just can't provide anything reliably portable.
- Related to the above ☝️ - you will not get a robust/reliable productionized Docker container/build-process.

## Getting Started

1. Have [Docker Desktop](https://www.docker.com/products/docker-desktop) installed. That or your own running container service...thing (e.g.: `podman`)
2. Clone this repo, `cd` into it
3. Run either `docker compose up` or `make`

Optionally, in a terminal you can run `docker compose run web make entr` (or `docker compose exec web make entr`). This will start up an instance of `entr` that watches for any file changes while you are coding, auto-correct any Ruby lint issues via rubocop and run your tests.
