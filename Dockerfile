FROM ruby:2.2.1

ENV LANG C.UTF-8                      
RUN cd /opt && git clone https://github.com/mirakui/retrobot.git

WORKDIR /opt/retrobot
RUN bundle install

ADD retrobot.yml retrobot.yml
ADD tweets tweets

# CMD bundle exec get-twitter-oauth-token
ENTRYPOINT ["retrobot"]
CMD ["-c", "rebtrobot.yml"]
