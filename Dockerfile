FROM msaraiva/elixir:1.2.2

EXPOSE 8080
RUN apk -Uuv add erlang-inets erlang-ssl erlang-crypto erlang-public-key erlang-asn1 && \
    rm -rf /var/cache/apk/*

WORKDIR /code
RUN mix local.hex --force
RUN mix hex.info
#RUN mix local.rebar --force

CMD ["mix", "run", "--no-halt"]
