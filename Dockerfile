FROM alpine:latest

RUN sudo apt-get update -y
RUN sudo apt-get install nodejs npm -y

COPY api /home/api

EXPOSE 8000

WORKDIR /home/api

ENTRYPOINT ["npm"]

CMD ["run", "start"]

