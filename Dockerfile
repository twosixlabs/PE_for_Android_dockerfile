# We start with our base OS, Ubuntu 16.04
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

# Update/Upgrade Packages
RUN apt-get -qy update
RUN apt-get -qy upgrade

# Install needed AOSP build packages
RUN apt-get install -y git-core gnupg flex bison gperf build-essential zip \
                       curl zlib1g-dev gcc-multilib g++-multilib \
                       libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev \
                       libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils \
                       xsltproc unzip python vim-common

# End of the Dockerfile