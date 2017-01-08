FROM opensuse:13.2

RUN zypper --non-interactive addrepo http://download.opensuse.org/repositories/devel:gcc/openSUSE_13.2/devel:gcc.repo
RUN zypper --non-interactive addrepo http://download.opensuse.org/repositories/shells:fish:release:2/openSUSE_13.2/shells:fish:release:2.repo
RUN zypper --gpg-auto-import-keys -n update
RUN zypper refresh
RUN zypper --non-interactive install +libgcc_s1-gcc6 -libgcc_s1
RUN zypper --non-interactive install -n fish python curl git tar make gcc6
RUN zypper --non-interactive install +gcc6-c++ -libstdc++6
RUN zypper --non-interactive install --type pattern devel_basis
RUN cp /usr/bin/gcc-6 /bin/gcc
RUN cp /usr/bin/gcc-6 /usr/bin/gcc
RUN cp /usr/bin/g++-6 /bin/g++
RUN cp /usr/bin/g++-6 /usr/bin/g++
RUN curl -L http://get.oh-my.fish -o /root/omf.inst
RUN fish /root/omf.inst --path=/root/.local/share/omf --config=/root/.config/omf --noninteractive
RUN echo "omf install bira" | fish
RUN mkdir /root/Work
WORKDIR /root/Work
