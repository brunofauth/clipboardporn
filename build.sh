#! /usr/bin/env sh


set -e

# Absolute path this script
cd $(dirname "$(readlink -f "$0")")


# This is used instead of $TMPDIR so that things get cached
PYTHON_DIR="$(pwd)/python-build"
PYTHON_DST="$PYTHON_DIR/python37-x64.exe"
PYTHON_SRC="https://www.python.org/ftp/python/3.7.3/python-3.7.3.exe"

export WINEPREFIX="$(pwd)/cbpwine"


[ -d "$PYTHON_DIR" ] || mkdir -p "$PYTHON_DIR"
[ -f "$PYTHON_DST" ] || curl "$PYTHON_SRC" -o "$PYTHON_DST"

wine "$PYTHON_DST"
wine python -m pip install --upgrade pip
wine pip install -r requirements.txt


wineconsole build.bat

