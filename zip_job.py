#!/usr/bin/env python3

import sys
from os.path import exists

arr = ["a", "b", "c", "d"]

for item in arr:
    try:
        open(item + ".txt", "x")
    except Exception as e:
        print(f"An exception occurred : {e}")
        sys.exit(1)
