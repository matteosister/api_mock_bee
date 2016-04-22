FROM alpine:3.3
#FROM msaraiva/erlang:18.1
MAINTAINER Matteo Giachino <matteog@gmail.com>

ENV VERSION=0.0.1

RUN apk --update --no-cache add ncurses

COPY rel/api_mock_bee/releases/$VERSION/api_mock_bee.tar.gz /tmp/api_mock_bee.tar.gz
RUN mkdir /api_mock_bee && \
    cd /api_mock_bee && \
    tar -xzf /tmp/api_mock_bee.tar.gz

CMD /api_mock_bee/bin/api_mock_bee foreground
