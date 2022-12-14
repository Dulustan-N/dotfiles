# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

export EDITOR='micro'
export PATH="/home/dulustan/.local/bin:$PATH"

# Set up the prompt
#autoload -Uz promptinit
#promptinit




# History
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history
setopt HIST_SAVE_NO_DUPS 
setopt HIST_FIND_NO_DUPS  
#setopt histignorealldups sharehistory

# Use modern completion system
autoload -Uz compinit && compinit
_comp_options+=(globdots) # With hidden files
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

#Autosuggestions plugin
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#Syntax highlighting plugin
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#Powerlevel10k theme
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
#To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#ALIASES
alias shutdown='sudo shutdown now'
alias restart='sudo reboot'
alias suspend='sudo pm-suspend'

alias ls='ls --color'
alias ll='ls -AlF'
alias la='ls -A'
alias l='ls -CF'

alias zshconfig="subl ~/.zshrc"
alias reload=". ~/.zshrc"

alias ged=gnome-text-editor
alias chrome=google-chrome
alias mi=micro 
alias fd=fdfind
alias bat=batcat 

alias surf="sudo openvpn /etc/openvpn/jp.ovpn"

#my CP compile functions
comp() { g++ -DLOCAL -std=c++17 -O2 -Wall -Wextra -Wno-unused-result -fmax-errors=2 -fsanitize=address,undefined -o ${1%.*} $1; }
compr() { comp $1 && "./${1%.*}"; }
compf() { g++ -DLOCAL -std=c++17 -O2 -Wall -Wextra -Wno-unused-result -fmax-errors=2 -fsanitize=address,undefined -o ${1%.*} $1; }
compfr() { compf $1 && "./${1%.*}"; }

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
