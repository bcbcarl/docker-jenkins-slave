FROM debian:latest
MAINTAINER Carl Su <bcbcarl@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# Install Java 7 and OpenSSH server
RUN \
  apt-get update -q && \
  apt-get install -y --no-install-recommends openjdk-7-jre-headless openssh-server && \
  apt-get clean && rm -rf /var/lib/apt/lists/* && \
  mkdir /var/run/sshd

# Create a user for Jenkins
RUN \
  useradd -m -d /var/lib/jenkins jenkins && \
  echo jenkins:jenkins | chpasswd
