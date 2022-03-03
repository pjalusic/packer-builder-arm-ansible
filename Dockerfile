# syntax = docker/dockerfile:1.3

FROM mkaczanowski/packer-builder-arm

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=cache,target=/var/cache/apt,id=apt \
    apt-get update \
    && apt install software-properties-common -y \
    && add-apt-repository --yes --update ppa:ansible/ansible \
    && apt install ansible -y \
    && ansible-galaxy collection install ansible.posix
