use warnings;
use strict;
use functions;
use Data::Dumper;


my $output=&functions::fastq("fastqbsp.txt",33);
print ref($output),"\n";
#print Dumper($output);
print $output->{SEQ_ID1}->{"seq"}->[5],"\n";
print $output->{SEQ_ID1}->{"quali"}->[5],"\n";
