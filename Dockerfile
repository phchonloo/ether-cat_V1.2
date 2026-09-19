FROM mcr.microsoft.com/devcontainers/cpp:1-debian-12

RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends \
        gcc-arm-none-eabi \
        gdb-multiarch \
        openocd \
        cmake \
        ninja-build \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
