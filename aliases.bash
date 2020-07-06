#
# ~/.bashrc.aliases
#
if [[ $LANG = '' ]]; then
	export LANG=en_US.UTF-8
fi

# cd commands
alias dc="cd"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../.."

# Commands
# ls command
colorflag="--color=auto"
export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
# List all files colorized in long format
alias ll="ls -l --file-type ${colorflag}"

# List all files colorized in long format, excluding . and ..
alias lla="ls -lA --file-type ${colorflag}"

#list all files colorized in short format, exluding . and ..
alias la="ls -A --file-type ${colorflag}"

# List only directories
alias lsd="ls -l --file-type ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# Order by last modified, long form no user group, color
alias lt="ls -toG"

alias grep="grep ${colorflag}"

# less command proper show
alias less="less -R"

# timing
alias week='date +%V'

# Exit command
alias out="exit"

#git aliases
alias gst="git status"
alias gdiff="git diff"
alias gadd="git add"
alias go="git checkout"

# tmux aliases
alias tmuxn="tmux new -s" # after need name
alias tmuxlist="tmux list-sessions"
alias tmuxattach=" tmux attach-session -t"

# python aliases
alias pip="sudo pip"

# module aliases python
alias pycheck="python -m pylint --reports=y "
