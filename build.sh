#! /usr/bin/env sh


# Absolute path this script
cd $(dirname "$(readlink -f "$0")")


PYTHON_DIR="$(pwd)/python-build"
PYTHON_DST="$PYTHON_DIR/python37-x64.exe"
PYTHON_SRC="https://www.python.org/ftp/python/3.7.3/python-3.7.3.exe"

export WINEPREFIX="$(pwd)/cbpwine"


if [ ! -d "$PYTHON_DIR" ]; then
    mkdir "$PYTHON_DIR"
    curl "$PYTHON_SRC" -o "$PYTHON_DST"
    wine "$PYTHON_DST"
    wine python -m pip install --upgrade pip
    wine pip install -r requirements.txt
fi


wineconsole build.bat