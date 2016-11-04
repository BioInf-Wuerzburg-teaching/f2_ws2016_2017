use warnings;
use strict;
use functions;
use Data::Dumper;

my $output=&functions::fastq("fastqwiki.txt");
print ref($output),"\n";
#print Dumper($output);
print $output->{SEQ_ID1}->[0]->[5],"\n";
print $output->{SEQ_ID1}->[1]->[5],"\n";

