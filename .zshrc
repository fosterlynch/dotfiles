# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/lynchfn/.oh-my-zsh"
# path for crowe keycloak login helper binary 
export PATH=$PATH:$HOME/.local/bin/
export OPENFAAS_URL=https://openfaas.thor.crowe.com
#export OPENFAAS_URL=https://openfaas-dev.k8s.crowe.com
export PATH=$PATH:$HOME/.arkade/bin/ 
export PATH=$PATH:/usr/lib/nvidia-cuda-toolkit/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/bin/emacs
export PATH=$PATH:$HOME/.emacs.d/bin
export LD_LIBRARY_PATH=/usr/lib/nvidia-cuda-toolkit/libdevice

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="wuffers"

# change the prompt
# autoload -Uz promptinit
# promptinit
# prompt -l
# prompt suse
unset zle_bracketed_paste
setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e
# export $EDITOR="vim" 
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
# this allows you to get old commands or scroll up in a new terminal
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit
unsetopt correct_all
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
# zstyle ':completion:*' format 'Completing %d'
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
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# uncomment if you want descriptions of available commands in complete
# zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
# zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/lynchfn/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/lynchfn/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/lynchfn/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/lynchfn/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

if [[ "$OSTYPE" == linux-gnu ]]; then
    PATH="${HOME}/bin:$PATH"
fi

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Trust Crowe root cert when using curl
# see https://curl.haxx.se/docs/sslcerts.html
export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git, python)
plugins=(zsh-syntax-highlighting)
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#525252' 
source $ZSH/oh-my-zsh.sh

[ -f "/home/lynchfn/.ghcup/env" ] && source "/home/lynchfn/.ghcup/env" # ghcup-env

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# adding asdf plugin manager
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dive="docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"
alias ppush="echo 'personal git push' && gopass show -c gitpat && git push"
alias ppull="echo 'personal git push' && gopass show -c gitpat && git pull"
alias sudo="dzdo"
alias ff="nautilus"
alias gbr="git branch | grep -v "dev" | xargs git branch -D"
# alias themechange="bash -c "$(wget -qO- https://git.io/vQgMr)""
alias kb="kubectl"
alias py="python3"
alias snkp="conda activate py39"
alias snkdn="conda deactivate"
alias at="tmux attach"
alias gpass="gopass show -c misc/git"
# alias gpsh="export url=$(git remote show origin) && gopass show -c misc/git && git push"
alias gpsh="gopass show -c misc/git && git push"
alias gpll="gopass show -c misc/git && git pull"
# alias nukeme="docker rmi -f $(docker images -aq)"
alias kgc="kubectl config get-contexts"
alias kswc="kubectl config use-context"
alias xc="xclip -selection clipboard"
alias vup="gopass show -c misc/vpass && nmcli con up id newvpn --ask"
alias vdn="nmcli con down id newvpn"
alias infra="~/repos/mapcat-infur"
alias email="~/repos/mapcat-openfaas-email"
alias server="~/repos/mapcat-openfaas-server"
# grepstuff
# find stuff use find ~ -name <what you want to find>

teds_quotes=(
"I know folks are divided on the actual police these days, but all human beings are opposed to the laugh police",
"Don't sell yourself short. If anything, sell yourself tall and get it altered later.",
"I'm like an incomplete list of Madeline Kahn's best films. I ain't got no clue.",
"You watch, from now on, I'll be floating like a butterfly and stinging like a bee. Except I won't die immediately after using my stinger.",
"You know what my favorite thing was about Sir Isaac Newton? He was so down to Earth.",
"Taking on a challenge is a lot like riding a horse, isn't it? If you're comfortable while you're doing it, you're probably doing it wrong.",
"As the man once said, the harder you work, the luckier you get.",
"I do love a locker room. It smells like potential.",
"I always thought tea was going to taste like hot brown water. And do you know what? I was right.",
"If that's a joke, I love it. If not, can't wait to unpack that with you later.",
"You know what the happiest animal on Earth is? It's a goldfish. You know why? It's got a 10-second memory.",
"If the Internet has taught us anything, it's that sometimes it's easier to speak our minds anonymously.",
"I think that you might be so sure that you're one in a million, that sometimes you forget that out there you're just one in 11.",
"I feel like we fell out of the lucky tree and hit every branch on the way down, ended up in a pool of cash and Sour Patch Kids.",
"It's just a group of people who care, Roy. Not unlike folks at a hip-hop concert whose hands are not in the air.",
"If you care about someone, and you got a little love in your heart, there ain't nothing you can't get through together.",
"Your body is like day-old rice. If it ain't warmed up properly, something real bad could happen.",
"Ice cream is the best. It's kinda like seeing Billy Joel perform live. Never disappoints.",
"I promise you there is something worse out there than being sad, and that's being alone and being sad. Ain't no one in this room alone.",
"There's two buttons I never like to hit: that's panic and snooze.",
"I believe in Communism. Rom-communism, that is. If Tom Hanks and Meg Ryan can go through some heartfelt struggles and still end up happy, then so can we.",
"If God would have wanted games to end in a tie, she wouldn't have invented numbers.",
"I've never been embarrassed about having streaks in my drawers. You know, it's all part of growing up.",
"Our goal is to go out like Willie Nelson — on a high!",
"This woman is strong, confident, and powerful. Boss, I tell you, I'd hate to see you and Michelle Obama arm wrestle, but I wouldn't be able take my eyes off of it, either.",
"It's kind of like back in the '80s when 'bad' meant 'good.' ",
"You beating yourself up is like Woody Allen playing the clarinet. I don't want to hear it.",
"I think things come into our lives to help us get from one place to a better one.",
"When it comes to locker rooms, I like 'em just like my mother's bathing suits. I only wanna see 'em in one piece, you hear?",
"this ones from the bathroom mirror, its the first thing i see in the morning and the last thing i see at night when i rationalize being too tired to floss."
)
ted_says=${teds_quotes[$RANDOM % ${#teds_quotes[@]} ]}

if [ $(($RANDOM % 3)) -eq 0 ]; then
    cat ~/terminal_art/pika.txt | lolcat
elif [ $(($RANDOM % 3)) -eq 1 ]; then
    cat ~/terminal_art/livefree.txt | lolcat
else;
    cat ~/terminal_art/ted.txt | lolcat
    echo $ted_says | lolcat
    # echo "Never half ass two things, whole ass one thing" | lolcat
    # cat ~/terminal_art/ron.txt | lolcat
fi
# cat ./terminal_art/livefree.txt | lolcat
# cat ~/terminal_art/pika.txt | lolcat 
