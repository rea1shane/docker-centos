FROM rea1shane/centos-sshd:7

RUN yum -y update \
    && yum -y install git \
    && yum -y install vim \
    && yum -y install wget \
    && yum -y install net-tools \
    && yum -y install zsh \
    && yum clean all \
    && rm -rf /var/cache/yum

RUN usermod -s /bin/zsh root

RUN git config --global push.default simple \
    && git config --global pull.rebase false

RUN echo Y | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
    && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting \
    && git clone https://github.com/zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions

WORKDIR /root

COPY resources/.zshrc .zshrc
COPY resources/.vimrc .vimrc
COPY resources/linux.zsh-theme .oh-my-zsh/custom/themes/linux.zsh-theme
