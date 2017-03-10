FROM debian:jessie

RUN apt-get update && apt-get install -y \
    moon-buggy \
  && rm -rf /var/lib/apt/lists/*

CMD /usr/games/moon-buggy
