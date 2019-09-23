FROM ruby:2.6.4

MAINTAINER henockl@live.com

RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends nodejs

ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY ./Gemfile ./Gemfile.lock ./

RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . .
