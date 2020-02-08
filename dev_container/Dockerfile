FROM debian:latest
RUN apt-get update && apt-get install -y \
    openssh-server \
    git \
    vim \
    tmux \
    w3m \
    w3m-img \
    vifm \
    mosh \
    nginx \
    python-pip \
    googler \
    sudo

RUN adduser --disabled-password --gecos "" user
RUN usermod -aG sudo user
RUN echo 'user:password' | chpasswd
COPY ./authorized_keys /home/user/.ssh/authorized_keys

WORKDIR /home/user
RUN git clone https://github.com/ty-po/.dotfiles.git

RUN ln -sf    /home/user/.dotfiles/.vim            /home/user/
RUN ln -sf    /home/user/.dotfiles/.shims          /home/user/
RUN ln -sf    /home/user/.dotfiles/.bash_aliases   /home/user/
RUN ln -sf    /home/user/.dotfiles/.dircolors      /home/user/
RUN ln -sf    /home/user/.dotfiles/.gitconfig      /home/user/
RUN ln -sf    /home/user/.dotfiles/.tmux.conf      /home/user/
RUN ln -sf    /home/user/.dotfiles/.vimrc          /home/user/
RUN ln -sf    /home/user/.dotfiles/.bashrc.default          /home/user/.bashrc

RUN chown -R user /home/user

EXPOSE 22
ENTRYPOINT service ssh restart && trap : TERM INT ; tail -f /dev/null & wait
