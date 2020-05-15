FROM ubuntu:18.04
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  ca-certificates \
  build-essential \
  wget \
  git \
  gnupg \
  python3 \
  libaudiofile-dev \
  libglew-dev \
  libsdl2-dev \
  bsdmainutils \
  && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/devkitPro/pacman/releases/download/devkitpro-pacman-1.0.1/devkitpro-pacman.deb && dpkg -i devkitpro-pacman.deb
RUN dkp-pacman --noconfirm -S switch-dev
RUN dkp-pacman --noconfirm -S devkitpro-pkgbuild-helpers libnx switch-tools switch-mesa switch-libdrm_nouveau switch-sdl2 
