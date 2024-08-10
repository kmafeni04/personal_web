FROM openresty/openresty:jammy

WORKDIR /app

RUN apt update
RUN apt install -y libssl-dev

RUN luarocks install luasec
RUN luarocks install lapis
RUN luarocks install tableshape

COPY . .

RUN lapis migrate production

EXPOSE 80

CMD ["lapis", "server", "production"]
  
