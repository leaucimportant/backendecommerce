FROM ubuntu:latest
LABEL authors="dolip"

ENTRYPOINT ["top", "-b"]