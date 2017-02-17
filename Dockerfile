FROM ruby:2.4

RUN mkdir /myapp
WORKDIR /myapp
RUN apt-get update -qq \
    && apt-get install -y build-essential libpq-dev curl netcat \
    && curl -sL https://deb.nodesource.com/setup_5.x | bash - \
    && apt-get install -y nodejs

ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp
ENTRYPOINT /myapp/bin/rails server
