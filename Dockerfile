FROM ubuntu:18.04
WORKDIR /qwfwd
# RUN apt-get update \
#  && apt-get install -y \
#  && rm -rf /var/lib/apt/lists/* \
COPY qwfwd.cfg /qwfwd/
COPY src/ /qwfwd/
RUN cd src \
  && ./configure \
  && make \
  && mv qwfwd.bin /qwfwd/qwfwd.bin \
  && cd .. \
  && rm -rf src/
CMD ["./qwfwd.bin"]
