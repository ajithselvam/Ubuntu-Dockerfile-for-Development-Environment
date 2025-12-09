FROM ubuntu:22.04

LABEL maintainer="AJITH SELVAM N"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    # Network Tools
    nmap \
    curl \
    wget \
    net-tools \
    iputils-ping \
    # Version Control
    git \
    # Editors
    vim \
    nano \
    # Programming Languages
    python3 \
    python3-pip \
    python3-venv \
    nodejs \
    npm \
    # Build Tools
    build-essential \
    gcc \
    g++ \
    make \
    cmake \
    # Utilities
    jq \
    tree \
    htop \
    tmux \
    screen \
    unzip \
    zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install additional Python packages
RUN pip3 install --no-cache-dir \
    requests \
    beautifulsoup4 \
    pandas \
    numpy

WORKDIR /workspace

CMD ["bash"]
