FROM arm64v8/ubuntu:20.04
WORKDIR /qwfwd/
RUN apt-get update \
 && apt-get install -y \
    make \
    gcc \
 && rm -rf /var/lib/apt/lists/*
COPY qwfwd.cfg /qwfwd/
COPY src/ /tmp/src/
RUN cd /tmp/src/ \
  && ./configure \
  && make \
  && cd /qwfwd/ \
  && mv /tmp/src/qwfwd.bin /qwfwd/ \
  && rm -rf /tmp/src/
ENTRYPOINT ["/qwfwd/qwfwd.bin"]
