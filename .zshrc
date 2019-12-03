export PATH=$HOME/bin:/usr/local/bin:/sbin:/usr/sbin:$PATH

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats ' %b'

setopt PROMPT_SUBST
PROMPT='%B%F{155}%n%f%b:%B%F{99}%~%f%b${vcs_info_msg_0_} '