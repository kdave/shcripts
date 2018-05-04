#!/usr/bin/perl
# chop the messages since last boot from a continuous serial console log,
# identified by the timestamp change

my $fn=$ARGV[0];
open(FH, "<$fn") or die $!;
my $fsize=(stat(FH))[7];

# likely to find the last log in 5 MiB
my $laststart=$fsize - 5 * 1024 * 1024;
$laststart=0 if ($laststart < 0);

seek(FH, $laststart, SEEK_SET) or die $!;

my @c=();
my $l;
my $lastts=9999999999;
while(($l=<FH>) ne '') {
	# [2095440.162952] text ...
	$l =~ /^\s*\[\s*([0-9]+)\.[0-9]+\]/;
	my $ts=$1;
	next if ($ts eq '');
	# found new boot, timestamps break the sequence
	if ($ts < $lastts) {
		#print("DBG: found new boot at $lastts -> $ts\n");
		@c=();
	}
	push @c, $l;
	$lastts=$ts;
}

close(FH);
print @c;
