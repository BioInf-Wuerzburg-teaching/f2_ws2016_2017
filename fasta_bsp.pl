use warnings;
use strict;
use functions;
use Data::Dumper;

my %hash=&functions::read_fasta("fasta.txt");

print Dumper(\%hash);
