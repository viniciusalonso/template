FROM ruby:3.2.0
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client sudo git

EXPOSE 3000

RUN useradd -ms /bin/bash app
RUN usermod -aG sudo app
RUN echo "app     ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER app

WORKDIR /home/app/api
ADD . .


RUN sudo chown -R app *

RUN bundle install
