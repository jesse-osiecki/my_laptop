FROM archlinux/base
#make a admin user
RUN useradd admin --create-home
RUN usermod -a -G wheel admin
RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
#dependencies
RUN pacman -Syy --noconfirm ansible base-devel git wget yajl
WORKDIR /home/admin
#install package query
USER admin
RUN git clone https://aur.archlinux.org/package-query.git 
RUN cd package-query/ && makepkg --noconfirm
USER root
RUN pacman -U package-query/package-query-*.pkg.tar.xz --noconfirm
#install yaourt
USER admin
RUN git clone https://aur.archlinux.org/yaourt.git
RUN cd yaourt/ && makepkg --noconfirm 
USER root
RUN pacman -U yaourt/yaourt*.pkg.tar.xz --noconfirm
#set user
USER admin
