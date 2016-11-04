use strict;
use warnings;
use function;
use Data::Dumper;


my $cooleroutput=&function::fastq("/home/flofis/fastq.txt",33);
print ref($cooleroutput),"\n";
#print Dumper($cooleroutput);
print $cooleroutput->{SEQ_ID1}->{seq}->[5],"\n";
print $cooleroutput->{SEQ_ID1}->{qual}->[5],"\n";
