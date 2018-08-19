FROM ubuntu:bionic-20180724.1

USER root
RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties module-init-tools
RUN add-apt-repository -y ppa:fenics-packages/fenics
RUN apt-get update
RUN apt install -y --no-install-recommends fenics
USER ${NB_USER}
