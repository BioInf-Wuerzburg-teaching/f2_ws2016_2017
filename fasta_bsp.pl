use warnings;
use strict;
use functions;

use Data::Dumper;

my %hash=&functions::read_fasta("fastaueben.txt");

print Dumper (\%hash);
    
