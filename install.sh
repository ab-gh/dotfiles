#!/usr/bin/env bash

export USERNAME=`whoami`

sudo apt-get update
sudo apt-get -y install --no-install-recommends apt-utils dialog 2>&1
sudo apt-get install -y \
  curl \
  git \
  gnupg2 \
  jq \
  sudo \
  openssh-client \
  less \
  fortune \
  neofetch \
  wget \
  unzip \
