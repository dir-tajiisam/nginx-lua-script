#!/bin/bash

# This script is run after the container is started.
USER=$(whoami)

# docker.sock
sudo chmod 666 /var/run/docker.sock

# .ssh
cp -r /tmp/.ssh $HOME
chown -R $USER:$USER $HOME/.ssh
chmod 600 $HOME/.ssh/*


# python
sudo pip install poetry
poetry config virtualenvs.in-project true
poetry install --no-root
