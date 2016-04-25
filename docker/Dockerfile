FROM msaraiva/elixir-dev:1.2.2

EXPOSE 8080
RUN apk -Uuv add erlang-inets erlang-ssl erlang-crypto erlang-public-key erlang-asn1 nodejs && \
    rm -rf /var/cache/apk/*


RUN mix local.hex --force
RUN mix hex.info
#RUN mix local.rebar --force

WORKDIR /code

CMD ["mix", "run", "--no-halt"]
