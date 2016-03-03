FROM ruby
ENV RAILS_ENV production
ENV SECRET_KEY_BASE $RUBY_DOWNLOAD_SHA256
RUN apt-get update -qq && \
    apt-get install -y build-essential zlib1g-dev libpq-dev nodejs && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /myapp
COPY . /myapp

RUN bundle install --without test development
RUN bundle exec rake assets:precompile

EXPOSE 8080
ENTRYPOINT ["script/entrypoint.sh"]
CMD ["script/server"]
