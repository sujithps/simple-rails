FROM ruby:2.3.1-alpine

RUN apk update && apk add build-base nodejs postgresql-dev tzdata

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . /app/

#ENTRYPOINT ["/app/docker-entrypoint.sh"]

#RUN chmod 777 ./docker-entrypoint.sh


#CMD ["bundle", "exec", "rails", "s", "-p", "7777", "-b", "'0.0.0.0'"]
