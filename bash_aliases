# 
# CUSTOM ALIAS SEPERATE FILE
# OBSERVATION
# Auto called file by the system (recognized by his name)
# But the name of the file should be same as defined

# Python Development
alias ENV='pipenv shell'
alias DIR='cd ~/Desktop/ticket-management/'
alias DEV='DIR && ENV'
alias RUN='python manage.py runserver 192.168.10.5:8000'
alias SHELL='python manage.py shell'
alias MAKE='python manage.py makemigrations'
alias MIGRATE='python manage.py migrate'
alias TEST='python manage.py test'
alias kitty2='DIR && kitty --config=/home/shubhansh/.config/kitty/kitty.conf --config=/home/shubhansh/.config/kitty/current-theme-pink.conf & disown'
alias L='clear;ls'


# UPDATE DEFAULT COMMANDS
alias ls='ls --color -h --group-directories-first'
alias cp='rsync -aP' # Show progess with coping
alias cal='ncal -b'  # Highlight today's date
alias vim='vim -p'   # Can pass multiple files names to open in new tabs

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

# CLEAR SCREEN
alias C='clear'

alias off='xset dpms force off'                    # Turn off the screen

#alias project='cd ~/Desktop/Accredian-Assignment/accredian-frontend-task/'
alias project='cd ~/Desktop/SkillStreet/'

# ALIAS For C EXECUTION
function run(){
  # It's compile the C/C++ code and run it
  g++ $1 && ./a.out && rm a.out
}

# ALIAS FOR PYTHON CALCULATING TIME
function tpython(){
  time -p python3 $1
}


