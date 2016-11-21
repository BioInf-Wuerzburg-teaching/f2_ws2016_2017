use strict;
use warnings;
use functions;

my $dna="AAAACCCGGT";

$dna=~ tr/ACGT/TGCA/;

print scalar reverse "$dna";

print "\n";
