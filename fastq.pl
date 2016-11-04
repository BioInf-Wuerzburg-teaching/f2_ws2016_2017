use strict;
use warnings;
use function;
use Data::Dumper;


my $cooleroutput=&function::fastq("/home/flofis/fastq.txt");
print ref($cooleroutput),"\n";
#print Dumper($cooleroutput);
print $cooleroutput->{SEQ_ID1}->[0]->[5],"\n";
print $cooleroutput->{SEQ_ID1}->[1]->[5],"\n";
