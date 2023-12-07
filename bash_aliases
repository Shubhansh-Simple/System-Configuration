# 
# CUSTOM ALIAS SEPERATE FILE
# OBSERVATION
# Auto called file by the system (recognized by his name)
# But the name of the file should be same as defined
alias boom='echo "Wait for 10 seconds" ; sleep 10s; echo "Wait complete" ; sleep 2s'

# UPDATE DEFAULT COMMANDS
alias ls='ls --color -h --group-directories-first'
alias cp='rsync -aP' # Show progess with coping
alias cal='ncal -b'  # Highlight today's date
alias vim='vim -p'  # Highlight today's date

# CUSTOM COMMANDS

# Recycle bin alias
alias trash='gio trash' # Move the content to trash
alias trash-list='ls ~/.local/share/Trash/files/'   # Show the trash files 
alias trash-empty='rm ~/.local/share/Trash/files/* && echo "Successfully Deleted!"'  # Del. trash files 

# help to navigate to directories
alias nav='source ranger' 

# System voluem alias
alias volume-up='amixer -D pulse sset Master 10%+'      # Increase the system volume
alias volume-down='amixer -D pulse sset Master 10%-'    # Decrease the system volume

alias off='xset dpms force off'                    # Turn off the screen

alias cfolder='cd ~/Desktop/C-Programming/'

# ALIAS For C EXECUTION
function run(){
  # It's compile the C/C++ code and run it
  g++ $1 && ./a.out && rm a.out
}

# ALIAS FOR PYTHON CALCULATING TIME
function tpython(){
  time -p python3 $1
}


