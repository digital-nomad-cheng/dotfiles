FROM ubuntu:22.04

RUN apt-get update && apt-get -y upgrade && \
    apt-get install golang vim git wget unzip stow tmux fish -y 

# setup neovim
WORKDIR /opt/ 
RUN wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz && \
    tar -xvf nvim-linux64.tar.gz && \
    echo 'PATH="$PATH:/opt/nvim-linux64/bin/"' > ~/.bashrc 
RUN git clone https://github.com/digital-nomad-cheng/dotfiles && \
    mkdir -p ~/.config/nvim && \
    cd dotfiles && cp -r nvm/* ~/.config/nvim

