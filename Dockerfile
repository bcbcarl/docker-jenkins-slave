FROM bcbcarl/jenkins-slave
MAINTAINER Carl Su <bcbcarl@gmail.com>

# Robot Framework
RUN \
  apt-get update -q && \
  apt-get install -y --no-install-recommends python-pip && \
  apt-get clean && rm -rf /var/lib/apt/lists/* && \
  pip install robotframework
