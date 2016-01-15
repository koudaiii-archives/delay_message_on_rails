FROM ruby
ENV RAILS_ENV production
ENV SECRET_KEY_BASE $RUBY_DOWNLOAD_SHA256
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /myapp
COPY . /myapp

RUN bundle install --without test development --path vendor/bundle -j4
RUN bundle exec rake assets:precompile

EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
