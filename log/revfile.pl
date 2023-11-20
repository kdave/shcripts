#!/usr/local/bin/perl
## Reverse input, line by line and on each line (rev + tac).

@file=<STDIN>;

foreach(reverse @file) {
	chomp $_;
	print scalar reverse($_),"\n";
}
