FROM ruby
ENV RAILS_ENV production
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp
RUN bundle install

# Production mode
#RUN echo "SECRET_KEY_BASE='`bundle exec rake secret`'" >> .env
RUN bundle exec rake assets:precompile
