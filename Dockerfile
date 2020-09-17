FROM ubuntu:18.04
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  ca-certificates \
  build-essential \
  wget \
  libarchive13 \
  curl \
  git \
  gnupg \
  python3 \
  libaudiofile-dev \
  libglew-dev \
  libsdl2-dev \
  bsdmainutils \
  && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/devkitPro/pacman/releases/download/v1.0.2/devkitpro-pacman.amd64.deb && dpkg -i devkitpro-pacman.amd64.deb
RUN dkp-pacman --noconfirm -S switch-dev
RUN dkp-pacman --noconfirm -S devkitpro-pkgbuild-helpers libnx switch-tools switch-mesa switch-libdrm_nouveau switch-sdl2 
COPY build.sh /home/build.sh
RUN ["chmod", "+x", "/home/build.sh"]
ENTRYPOINT ["/home/build.sh"]
