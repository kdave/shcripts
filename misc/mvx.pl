#!/usr/bin/perl
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

use strict;
use warnings;

require("syscall.ph");
my ($path1, $path2) = @ARGV;
my $AT_FDCWD = -100;
my $RENAME_EXCHANGE = (1 << 1);
my $ret = syscall(&SYS_renameat2, $AT_FDCWD, $path1, $AT_FDCWD, $path2, $RENAME_EXCHANGE);
#print("ret: $ret: $!\n");
