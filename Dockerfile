FROM archlinux

ADD . /doc
WORKDIR /doc

RUN pacman -Syu --noconfirm && pacman -S make texlive-core texlive-latexextra --noconfirm

RUN make
