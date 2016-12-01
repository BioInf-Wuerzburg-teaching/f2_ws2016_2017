#!/usr/bin/perl
use strict;
use warnings;
use Data::Dump qw(dump);

my $file = 'data.txt';
my $threshold = 0;

open(FILE, '<', $file) || die $!;
my $counter = 0;
my $nextLineIsQualityLine = 0;
my @qualityLines;
my $qualityLineCounter = 0;

while(<FILE>) {
    chomp;
    if($counter == 0) {
        $threshold = $_;
    } elsif($_ eq '+') {
        $nextLineIsQualityLine = 1;
    } elsif($nextLineIsQualityLine == 1) {
        push(@qualityLines, $_);
        $qualityLineCounter++;
        $nextLineIsQualityLine = 0;
    }
    $counter++;
}
close FILE || die;

my $currentChar;
my $finalQuality;
my $colSum = 0;
my $badQualityCounter = 0;

while($qualityLines[0] ne "") {
    for(my $row = 0; $row < @qualityLines; $row++) {
        $currentChar = substr($qualityLines[$row], 0, 1);
        $qualityLines[$row] =~ s/^.//s;
        $finalQuality = ord($currentChar) - 33;
        $colSum += $finalQuality;
    }
    if($colSum / $qualityLineCounter < $threshold) {
        $badQualityCounter++;
    }
    $colSum = 0;
}

print $badQualityCounter;