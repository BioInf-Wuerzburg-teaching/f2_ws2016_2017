use warnings;
use strict;
use function;

my $dna=&function::dateizeile("/home/flofis/dna.txt");

$dna=~ tr/ACGT/TGCA/;

print scalar reverse $dna;
print "\n";
