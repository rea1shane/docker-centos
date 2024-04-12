FROM centos:8

# Fix yum update error: https://techglimpse.com/failed-metadata-repo-appstream-centos-8/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* \
    && sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-* \
    && yum -y update \
    && yum -y install git \
    && yum -y install vim \
    && yum -y install wget \
    && yum -y install net-tools \
    && yum -y install zsh \
    && yum -y install openssh-server \
    && yum clean all \
    && rm -rf /var/cache/yum/*

# Fix Unable to load host key: ssh_host_rsa_key, ssh_host_ecdsa_key, ssh_host_ed25519_key
RUN ssh-keygen -t rsa -N "" -f /etc/ssh/ssh_host_rsa_key \
    && ssh-keygen -t rsa -N "" -f /etc/ssh/ssh_host_ecdsa_key \
    && ssh-keygen -t rsa -N "" -f /etc/ssh/ssh_host_ed25519_key

RUN echo "root:1" | chpasswd \
    && usermod -s /bin/zsh root \
    && rm /run/nologin # Remove warning: https://unix.stackexchange.com/questions/487742/system-is-booting-up-unprivileged-users-are-not-permitted-to-log-in-yet

RUN git config --global push.default simple \
    && git config --global pull.rebase false

RUN echo Y | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
    && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting \
    && git clone https://github.com/zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions

WORKDIR /root

COPY .zshrc .zshrc
COPY .vimrc .vimrc
COPY linux.zsh-theme .oh-my-zsh/custom/themes/linux.zsh-theme

# Output sshd logs: https://serverfault.com/questions/952391/sshd-logs-in-docker-container-not-shown-by-docker-logs
CMD ["/usr/sbin/sshd", "-D", "-e"]
