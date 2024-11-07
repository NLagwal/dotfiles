
# The following lines were added by compinstall

zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/legit/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.config/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
export KEYTIMEOUT=1

# Git status in prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
setopt extendedglob
zstyle ':vcs_info:git:*' formats '%F{red}(%b)%f'
zstyle ':vcs_info:*' enable git


# Gentoo-specific options
if [[ -f /etc/gentoo-release ]]; then
    # Colored output for emerge
    alias emerge='emerge --color=y'
    
    # Set EPREFIX for Prefix Portage
    export EPREFIX="$HOME/gentoo"
    
    # Add Gentoo scripts to PATH
    export PATH="$PATH:/usr/share/gentoo-functions"
fi

# Better color scheme
export LSCOLORS="ExGxFxDxCxDxDxhbhdacEx"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


# Syntax highlighting (if zsh-syntax-highlighting is installed)
if [[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
    ZSH_HIGHLIGHT_STYLES[default]=none
    ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red,bold
    ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=cyan,bold
    ZSH_HIGHLIGHT_STYLES[alias]=fg=white,bold
    ZSH_HIGHLIGHT_STYLES[builtin]=fg=white,bold
    ZSH_HIGHLIGHT_STYLES[function]=fg=white,bold
    ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
    ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,underline
    ZSH_HIGHLIGHT_STYLES[commandseparator]=none
    ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=white,bold
    ZSH_HIGHLIGHT_STYLES[path]=fg=grey,underline
    ZSH_HIGHLIGHT_STYLES[globbing]=fg=grey,bold
    ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=grey,bold
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
    ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=white
    ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=white
    ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=cyan
    ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=cyan
    ZSH_HIGHLIGHT_STYLES[assign]=none
fi

# End of lines configured by zsh-newuser-install
PS1='[%F{red}%n%f@%m{%F{blue}%/%f}${vcs_info_msg_0_}] 
---%F{red}>%f$ ' 


alias nv='nvim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add this to your ~/.bashrc or ~/.zshrc:
export PKG_CONFIG_PATH="/usr/local/lib64/pkgconfig:$PKG_CONFIG_PATH"
export LD_LIBRARY_PATH="/usr/local/lib64:$LD_LIBRARY_PATH"
export LIBRARY_PATH="/usr/local/lib64:$LIBRARY_PATH"
export CPATH="/usr/local/include:$CPATH"

# Add these to your shell's rc file (~/.bashrc or ~/.zshrc) to make them permanent
echo 'export PKG_CONFIG_PATH="/usr/local/lib64/pkgconfig:$PKG_CONFIG_PATH"' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH="/usr/local/lib64:$LD_LIBRARY_PATH"' >> ~/.bashrc
echo 'export LIBRARY_PATH="/usr/local/lib64:$LIBRARY_PATH"' >> ~/.bashrc
echo 'export CPATH="/usr/local/include:$CPATH"' >> ~/.bashrc

