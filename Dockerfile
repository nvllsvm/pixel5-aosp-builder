FROM ubuntu:20.10
RUN apt-get update \
 && apt-get install -y \
    bc \
    bison \
    curl \
    flex \
    g++-multilib \
    git \
    gperf \
    liblz4-tool \
    libncurses5 \
    libssl-dev \
    libxml2-utils \
    make \
    openjdk-11-jdk \
    python-is-python3 \
    python3 \
    rsync \
    zip
RUN curl http://commondatastorage.googleapis.com/git-repo-downloads/repo -o /usr/bin/repo \
 && chmod +x /usr/bin/repo
RUN git config --global user.email "" \
 && git config --global user.name "" \
 && git config --global color.ui auto
WORKDIR /build
