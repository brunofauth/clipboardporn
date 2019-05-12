#! /usr/bin/env sh


pyinstaller \
    --clean \
    --onefile \
    --windowed \
    --name CBViewer \
    --add-data ".\porn-sites.list;." \
    --noupx \
    .\clipboardporn.py
