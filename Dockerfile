FROM ubuntu:16.04
MAINTAINER Li Song "ghosty.lee.1984@gmail.com"

RUN apt-get update && apt-get install -y \
        gawk wget git-core diffstat unzip texinfo gcc-multilib \
        build-essential chrpath socat cpio python python3 python3-pip \
        python-pexpect libsdl1.2-dev xterm curl locales

RUN curl http://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo
RUN chmod a+x /usr/local/bin/repo

RUN locale-gen en_US.UTF-8 && \
        update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

RUN mkdir -p /home/worker && \
    mkdir -p /home/worker/building && \
    echo "worker:x:1000:1000:worker,,,:/home/worker:/bin/bash" >> /etc/passwd && \
    echo "worker:x:1000:" >> /etc/group && \
    echo "worker ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers && \
    chown worker:worker -R /home/worker

RUN ln -sfn /usr/share/zoneinfo/America/New_York /etc/localtime

USER worker
ENV HOME /home/worker
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
WORKDIR /home/worker/building
CMD /bin/bash
