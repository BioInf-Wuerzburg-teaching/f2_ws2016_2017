use warnings;
use strict;
use function;
use Data::Dumper;


my %hash=&function::read_fasta("/home/flofis/fasta.txt");


print Dumper(\%hash);
