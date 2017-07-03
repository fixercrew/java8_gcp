#FROM openjdk:8
FROM circleci/openjdk:8-jdk-browsers

USER root
RUN mkdir /install && chown circleci:circleci /install
USER circleci

RUN cd /install && curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-161.0.0-linux-x86_64.tar.gz > google-cloud-sdk.tar.gz && gunzip google-cloud-sdk.tar.gz && tar -xf google-cloud-sdk.tar

