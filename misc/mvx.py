#!/usr/bin/python3
#
# Cross-rename of two paths: file, directory, symlink (not the target),
# also subvolumes (on btrfs)
#
# Example:
#
#    file - a file
#    dir  - a directory
#
#    $ mvx.pl file dir
#
#    file - a directory named 'file'
#    dir  - a file named 'dir'

import ctypes
import sys

libc = ctypes.CDLL("libc.so.6")
libc.renameat2.argtypes = [ctypes.c_int, ctypes.c_char_p, ctypes.c_int, ctypes.c_char_p, ctypes.c_uint]
libc.renameat2.restype = ctypes.c_int
AT_FDCWD = -100
RENAME_EXCHANGE = (1 << 1)
p1 = str.encode(sys.argv[1])
p2 = str.encode(sys.argv[2])
ret = libc.renameat2(AT_FDCWD, p1, AT_FDCWD, p2, RENAME_EXCHANGE)
#print("ret: %d" % (ret))
