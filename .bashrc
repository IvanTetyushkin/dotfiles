#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
#	export TERM='gnome-256color';
#elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM='xterm-256color';
#fi;
# changing PATH
# Directories to be prepended to PATH
declare -a dirs_to_prepend=(
    "/usr/local/bin" # Ensure that this bin always takes precedence over `/usr/bin`
)

# Directories to be appended to PATH
declare -a dirs_to_append=(
    "/usr/bin"
    "$HOME/bin"
)

# Prepend directories to PATH
for index in ${!dirs_to_prepend[*]}
do
    if [ -d ${dirs_to_prepend[$index]} ]; then
        # If these directories exist, then prepend them to existing PATH
        PATH="${dirs_to_prepend[$index]}:$PATH"
    fi
done

# Append directories to PATH
for index in ${!dirs_to_append[*]}
do
    if [ -d ${dirs_to_append[$index]} ]; then
        # If these bins exist, then append them to existing PATH
        PATH="$PATH:${dirs_to_append[$index]}"
    fi
done

unset dirs_to_prepend dirs_to_append
export PATH

#adding files
load_dotfiles() {
    declare -a files=(
    ~/dotfiles/.bashrc_aliases # add common aliases
    ~/dotfiles/.bashrc_appearence # appearence settings
    ~/.bashrc_local # local settings
    ~/dotfiles/.bashrc_functions  # functions
    ~/dotfiles/.bashrc_exports    # exports & defaults
    )

    # if these files are readable, source them
    for index in ${!files[*]}
    do
        if [[ -r ${files[$index]} ]]; then
            source ${files[$index]}
        fi
    done
}

load_dotfiles
unset load_dotfiles
