FROM debian:stretch

RUN apt-get update && \
    apt-get install -y gnupg software-properties-common apt-transport-https sudo && \
    apt-get clean

RUN apt-key adv --fetch-keys https://apt.octopus.com/public.key && \
    add-apt-repository "deb https://apt.octopus.com/ stretch main" && \
    apt-get update

RUN apt-get install tentacle && \
    apt-get clean

ADD setup.sh setup.sh

RUN useradd -ms /bin/bash octo
RUN sudo usermod -aG sudo octo
RUN echo "%octo  ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

USER octo

EXPOSE 10933
ENTRYPOINT [ "bash" ]
CMD [ "-c", "/setup.sh" ]

LABEL name tentacle
LABEL version preview