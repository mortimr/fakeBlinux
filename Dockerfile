FROM opensuse:13.2

RUN zypper --non-interactive addrepo http://download.opensuse.org/repositories/devel:gcc/openSUSE_13.2/devel:gcc.repo
RUN zypper --gpg-auto-import-keys -n update
RUN zypper refresh
RUN zypper --non-interactive install +libgcc_s1-gcc6 -libgcc_s1
RUN zypper --non-interactive install -n bash python curl git tar make gcc6 valgrind
RUN zypper -n --non-interactive install \
    clang             \
    make
RUN zypper -n --non-interactive install \
    ksh               \
    tcsh              \
    zsh
RUN zypper -n --non-interactive install          \
    ncurses ncurses-devel      \
    php5                       \
    python3                    \
    ruby
RUN zypper -n --non-interactive install \
    tmux              \
    zip unzip
RUN zypper --non-interactive install +gcc6-c++ -libstdc++6
RUN zypper --non-interactive install --type pattern devel_basis
RUN cp /usr/bin/gcc-6 /bin/gcc
RUN cp /usr/bin/gcc-6 /usr/bin/gcc
RUN cp /usr/bin/g++-6 /bin/g++
RUN cp /usr/bin/g++-6 /usr/bin/g++
RUN mkdir /root/Work
WORKDIR /root/Work
