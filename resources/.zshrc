export ZSH="/root/.oh-my-zsh"
ZSH_THEME="linux"
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
)
source $ZSH/oh-my-zsh.sh

# Timezone
export TZ='Asia/Shanghai'

# Enable history time
export HISTTIMEFORMAT="%F %T "

# Fix zsh-autosuggestions bug: https://github.com/zsh-users/zsh-autosuggestions/issues/560#issuecomment-695993640
TERM=xterm-256color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
