ARG PORT=5555
FROM debian
RUN apt update
RUN apt-get update
RUN apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev 
RUN mkdir rig
RUN cd rig
RUN git clone https://github.com/xmrig/xmrig.git
RUN cd xmrig
RUN mkdir build
RUN cd build
RUN cmake ..
RUN make -j4
RUN mkdir /rnxmr
RUN cp xmrig /rnxmr/
RUN cd /rnxmr/

EXPOSE ${PORT}:${PORT}

