use strict;
use warnings;
use function;
use Data::Dumper;


my $cooleroutput=&function::fastq("/home/flofis/fastq.txt");
print ref($cooleroutput),"\n";
print Dumper($cooleroutput);
