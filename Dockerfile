FROM jekyll/builder

LABEL version="0.9.0"
LABEL description="develop and generate arc42.org site"
LABEL vendor="req42 (Peter Hruschka, Gernot Starke)"

COPY Gemfile .

RUN apk update && \
    apk add ncurses && \
    bundle install

WORKDIR /srv/jekyll
EXPOSE 4000
