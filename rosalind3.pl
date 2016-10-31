use warnings;
use strict;
use functions;

my $dna="AAAACCCGGT";

$dna=~ tr/ATCG/TAGC/;

print scalar reverse "\n$dna";

