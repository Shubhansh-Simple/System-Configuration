import os

# Default unused themes names of vim
delete_theme_db = {
    "blue.vim" : 1,
    "darkblue.vim" : 1,
    "default.vim" : 1,
    "delek.vim" : 1,
    "desert.vim" : 1,
    "elflord.vim" : 1,
    "evening.vim" : 1,
    "industry.vim" : 1,
    "koehler.vim" : 1,
    "lunaperche.vim" : 1,
    "morning.vim" : 1,
    "murphy.vim" : 1,
    "pablo.vim" : 1,
    "peachpuff.vim" : 1,
    "ron.vim" : 1,
    "shine.vim" : 1,
    "slate.vim" : 1,
    "torte.vim" : 1,
    "zellner.vim" : 1,
}

# Delete all vim's themes in current working directory
for each_theme in os.listdir():
    if each_theme.endswith(".vim") and \
            delete_theme_db.get(each_theme):
            os.remove(each_theme)
            print("Deleted Theme - ",each_theme)
