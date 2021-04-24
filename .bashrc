######## ALIASES ########

alias doas='sudo'
alias cconky='vim ~/.config/conky/conky.conf'
alias cdwm='vim ~/dwm/config.h'
alias calacritty='vim ~/.config/alacritty/alacritty.yml'
alias cpicom='vim ~/.config/picom/picom.conf'
alias mkdwm='cd ~/dwm && sudo make clean install'

######### PYWAL #########

# Import colorscheme from 'wal' asynchronously
# # &   # Run the process in the background.
# # ( ) # Hide shell job control messages.
# # Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)
#
# # Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

######### SHELL #########
exec zsh
