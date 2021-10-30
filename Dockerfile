FROM ruby:3-alpine

ADD     . /usr/src/app
WORKDIR /usr/src/app
RUN     apk update && apk add alpine-sdk entr
RUN     bundle install
CMD     ["bundle", "exec", "rackup", "-o", "0.0.0.0", "-p", "8080"]
