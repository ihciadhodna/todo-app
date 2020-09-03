FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs
WORKDIR /todo-app
COPY Gemfile Gemfile.lock /todo-app/
RUN bundle install