#!/usr/bin/env python3
import os
from subprocess import check_output


def format_files():
    dir_path = os.path.dirname(os.path.realpath(__file__))
    os.chdir(dir_path)

    for subdir, dirs, files in os.walk(dir_path):
        for filename in files:
            if filename.endswith('.py') and len(filename) == 7:
                print(filename)
                command = f"yapf -i {subdir}/{filename}"
                check_output(command, shell=True)


if __name__ == '__main__':
    format_files()
