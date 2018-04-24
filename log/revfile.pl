#!/usr/local/bin/perl
# reverse input, line by line and on-line

@file=<STDIN>;

foreach(reverse @file) {
	chomp $_;
	print scalar reverse($_),"\n";
}
