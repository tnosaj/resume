FROM debian:latest

RUN apt-get update && apt-get install -y less man \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir /man

COPY ./jason.7 /man

ENTRYPOINT ["man"]
CMD ["-P", "less", "-l","/man/jason.7"]
