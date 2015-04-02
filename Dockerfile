FROM ruby
ENV RAILS_ENV production
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /myapp
ADD . /myapp
RUN bundle install --without development test
EXPOSE 3000:3000

