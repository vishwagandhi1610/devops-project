FROM python:3-alpine

RUN apk add --update --no-cache ansible bash openssh

WORKDIR /coffee-app

ENTRYPOINT []
CMD ["/bin/bash"]