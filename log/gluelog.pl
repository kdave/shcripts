#!/usr/bin/perl
## Glue together lines from dmesg that got wrapped due to text width.

use strict;
use warnings;

my $nl='';
while (<>) {
	chomp;
	last if /^\s*$/;
	if (/^[[]/) {
		print "$nl$_";
	} else {
		print "$_";
		next;
	}
	$nl="\n";
}
