FROM ubuntu:16.04

RUN apt update && \
    apt install wget -y && \
    wget https://apt.puppetlabs.com/puppet5-release-xenial.deb && \
    dpkg -i puppet5-release-xenial.deb

RUN apt update && \
    apt install pdk -y

RUN mkdir /code
WORKDIR /code

ENTRYPOINT ["pdk"]

CMD ["help"]
