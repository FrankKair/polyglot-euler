#!/usr/bin/env python3
import os


def remove_lua_header():
    dir_path = os.path.dirname(os.path.realpath(__file__))
    os.chdir(dir_path)

    for subdir, dirs, files in os.walk(dir_path):
        for filename in files:
            if filename.endswith('.lua'):
                filename = os.path.join(subdir, filename)
                
                with open(os.path.join(dir_path, filename), 'r+') as file_handle:
                    lines = file_handle.readlines()[1:]
                    file_handle.truncate()

                with open(os.path.join(dir_path, filename), 'r+') as file_handle:
                    file_handle.writelines(lines)
                
            else:
                continue


if __name__ == '__main__':
    remove_lua_header()
