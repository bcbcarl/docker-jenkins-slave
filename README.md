# Requirements
* [Docker][link_docker]
* [Jenkins][link_jenkins] (master)
* [Docker Plugin][link_docker_plugin]
* OpenSSH server

# Recommends
* Git, Mercurial, Subversion, etc...

# Instructions
1. `DOCKER_OPTS="-H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock"`
2. `docker pull bcbcarl/jenkins-slave`
3. Configure your Docker plugin on Jenkins.
4. That's all!

[![Docker plugin screenshot][docker_plugin_screenshot]][docker_plugin_screenshot]

# Make your own slave
This will make a new slave image with pip installed.

    FROM bcbcarl/jenkins-slave
    MAINTAINER <your name & email>

    RUN \
      apt-get update -q && \
      apt-get install -y --no-install-recommends python-pip && \
      apt-get clean && rm -rf /var/lib/apt/lists/*

[link_docker]: https://www.docker.com/
[link_jenkins]: http://jenkins-ci.org/
[link_docker_plugin]: https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin
[docker_plugin_screenshot]: http://i.imgur.com/J8eSoBl.png
