
#############################################################
#                       Keyboard options                    #
#############################################################
setxkbmap -rules evdev -model pc105 -layout us,us -variant altgr-intl -option
setxkbmap -rules evdev -model pc105 -layout us,us -variant altgr-intl -option "lv3:ralt_switch,caps:escape,shift:both_capslock_cancel" -symbols "pc+us(altgr-intl)+us:2+inet(evdev)+level3(ralt_switch)+capslock(escape)+shift(both_capslock_cancel)"

#############################################################
#                       Exports                             #
#############################################################
 #Path to dotfiles dir
 export DOTFILES=$HOME/.dotfiles
 #Path to oh-my-zsh dir
 export ZSH=$HOME/.oh-my-zsh
 export VISUAL="nvim"
 export EDITOR='nvim'
 export RANGER_LOAD_DEFAULT_RC='FALSE'
 export KEYTIMEOUT=1
 export ADOCPDFBASE="/home/abolullo/Documents/seguridad/plantillas/.asciidoc"
 export LESS="-JMQRiFX"



#############################################################
#                       Vim keybinds                        #
#############################################################
# Prefer vi shortcuts
bindkey -v
DEFAULT_VI_MODE=viins
KEYTIMEOUT=1


#############################################################
#                       Themes                              #
#############################################################
## Look in ~/.oh-my-zsh/themes/
## Optionally, if you set this to "random", it'll load a random theme each
## time that oh-my-zsh is loaded.
ZSH_THEME="bira"

## Base16 theming git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
BASE16_SHELL="$HOME/.base16-manager/chriskempson/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"


#############################################################
#                       Z support                           #
#############################################################
zstyle ':completion:*' menu select

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"


#############################################################
#                        OhMyZsh options                    #
#############################################################
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


#############################################################
#                       Plugins                             #
#############################################################
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
 plugins=(
     git
     #vi-mode
     gitfast
     git-flow
     zsh-z
     zsh-autosuggestions
   )


#############################################################
#                  path and stuff                           #
#############################################################
# User configuration
export PATH=$PATH"/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:/home/abolullo/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/snap/bin"
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Startup programs
#xmodmap $HOME/.Xmodmap


#############################################################
#                       Aliases                             #
#############################################################
## Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# alias gl='git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done && git fetch --all && git pull --all'
alias zshrc="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"			#confirm before overwriting
alias df='df -h'				#human-readable sizes
alias free='free -m'			#show sizes in MB
alias np='vim PKGBUILD'
alias fixit='sudo rm -f /var/lib/pacman/db.lck'
alias update='yay -Syua'
alias shutdown='sudo shutdown 0'
alias vim='nvim'
alias mouse='sudo rmmod psmouse; sudo modprobe psmouse;'
alias bluetooth='sudo systemctl start bluetooth'
alias bluez='blueman-applet'
alias bluez-dev='blueman-manager'

alias egpu='sudo egpu-switcher switch egpu && sudo systemctl restart gdm'
alias internal='sudo egpu-switcher switch internal && sudo systemctl restart gdm'

## Aliases fo the cul staaff

alias rmvimswap='rm ~/.local/share/nvim/swap/'
alias simplenote='nvim ~/Documents/simplenote'
alias simpletask='vim ~/Documents/simplenote/task'

alias fd='fdfind'

alias gs='git status'
alias glop='git log --pretty=format:"%h - %s" -n 1 | xsel -i -b'
alias glo='git log --pretty=format:"%h - %s" -n 10'
alias grbp='for remote in $(git branch -r); do git branch --track ${remote#origin/} $remote; done && git fetch --all && git pull --all'# Aliases for Keepler

## Aliases for keepler
alias git-clone-caf='git clone --config '\''credential.helper=!aws-vault exec --prompt zenity caf-leadmindanalytics-git -- aws codecommit credential-helper '\'' --config '\''credential.UseHttpPath=true'\'
