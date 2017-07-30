FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
RUN mkdir /coursecompare
WORKDIR /coursecompare
ADD Gemfile /coursecompare/Gemfile
ADD Gemfile.lock /coursecompare/Gemfile.lock
RUN bundle install
ADD . /coursecompare 
