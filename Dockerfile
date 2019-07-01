FROM debian:8
ADD https://s3.amazonaws.com/mciuploads/mongomirror/binaries/linux/mongomirror-linux-x86_64-debian81-0.5.2.tgz /mongomirror.tgz
WORKDIR /mongomirror
RUN tar xzf /mongomirror.tgz -C /mongomirror --strip-components=1
RUN apt-get update && apt-get install -y libssl-dev libsasl2-dev ca-certificates
CMD ["--help"]
ENTRYPOINT ["/mongomirror/bin/mongomirror"]
