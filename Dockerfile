FROM archlinux

COPY . /doc

RUN pacman -Syu --noconfirm && pacman -S texlive-core texlive-latexextra --noconfirm

RUN cd doc && make
