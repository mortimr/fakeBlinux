FROM opensuse:13.2

RUN zypper --non-interactive addrepo http://download.opensuse.org/repositories/devel:gcc/openSUSE_13.2/devel:gcc.repo
RUN zypper --non-interactive addrepo http://download.opensuse.org/repositories/shells:fish:release:2/openSUSE_13.2/shells:fish:release:2.repo
RUN zypper --gpg-auto-import-keys -n update
RUN zypper refresh
RUN zypper --non-interactive install +libgcc_s1-gcc6-6.2.1+r243646-54.1.x86_64 -libgcc_s1-4.8.3+r212056-2.4.4.x86_64 
RUN zypper --non-interactive install -n gcc6 fish python curl git tar make
RUN cp /usr/bin/gcc-6 /bin/gcc
RUN curl -L http://get.oh-my.fish -o /root/omf.inst
RUN fish /root/omf.inst --path=/root/.local/share/omf --config=/root/.config/omf --noninteractive
RUN echo "omf install bira" | fish
COPY .ssh /root/.ssh
RUN mkdir /root/Work
WORKDIR /root/Work
