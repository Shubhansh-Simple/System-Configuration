#!/usr/bin/bash

#Script to open multiple applications for development (like postman, teams, browser etc.)
#in specific work spaces like 0,1,2

# Helpfull Pages for development
CHAT_GPT='https://chatgpt.com/c/8df28c98-4416-4320-ac82-0e2c07f176dd'
REST_FRAMEWORK_DOC='https://www.django-rest-framework.org/'

# Application URL
LOCAL_SITE_ADMIN_PANEL='http://192.168.10.34:8000/administration/'                                               # Local Admin Panel url
SERVER_FILES='https://www.pythonanywhere.com/user/shubhansh7777/files/home/shubhansh7777/Ticket-Manager-App'     # Server Files Url
SERVER_WEB='https://www.pythonanywhere.com/user/shubhansh7777/webapps/#tab_id_shubhansh7777_pythonanywhere_com'  # Server Web Url
SERVER_ADMIN_PANEL='https://shubhansh7777.pythonanywhere.com/administration/'                                    # Server Admin Panel Url

####################
# TERMINAL SECTION #
####################
sleep 0.5
xdotool set_desktop 0                                            # WORK SPACE - FIRST
sleep 0.5
kitty --directory ~/Desktop/ticket-management/ &
paplay /usr/share/sounds/freedesktop/stereo/dialog-information.oga

#--------------------------------------------------------------------------------------------------

###################
# BROWSER SECTION #
###################
sleep 0.5
xdotool set_desktop 1                                            # WORK SPACE - SECOND
sleep 0.5

# First Browser Window
brave-browser --new-window \
  --new-tab $CHAT_GPT \
  --new-tab $REST_FRAMEWORK_DOC &

sleep 0.5
xdotool set_desktop 1                                            # WORK SPACE - SECOND
sleep 0.5

# Second Browser Window
brave-browser --new-window \
  --new-tab $LOCAL_SITE_ADMIN_PANEL \
  --new-tab $SERVER_FILES \
  --new-tab $SERVER_WEB \
  --new-tab $SERVER_ADMIN_PANEL &

sleep 0.5
xdotool set_desktop 1                                            # WORK SPACE - SECOND
sleep 0.5

paplay /usr/share/sounds/freedesktop/stereo/dialog-information.oga
sleep 5s

#--------------------------------------------------------------------------------------------------

###########################
# POSTMAN & TEAMS SECTION #
###########################
xdotool set_desktop 2                                            # WORK SPACE - THIRD
sleep 0.5
teams-for-linux &
nohup postman &
paplay /usr/share/sounds/freedesktop/stereo/dialog-information.oga
sleep 20s

#--------------------------------------------------------------------------------------------------
xdotool set_desktop 0                                            # WORK SPACE - FIRST
sleep 0.5
paplay /usr/share/sounds/freedesktop/stereo/dialog-information.oga
notify-send "Your Environment Complete For Start Working"
exit

#--------------------------------------------------------------------------------------------------
