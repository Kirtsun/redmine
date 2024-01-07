FROM ruby:3.1.4

WORKDIR /test

COPY ./redmine /test

RUN bundle install
RUN bundle config set --local without 'development test'
RUN bundle exec rake generate_secret_token


CMD RAILS_ENV=production bundle exec rake db:migrate && bundle exec rails server -e production 

