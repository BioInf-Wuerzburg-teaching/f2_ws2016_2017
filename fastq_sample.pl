use strict;
use warnings;
use functions;
use Data::Dumper;

my $output=&functions::fastq("fastq_sample.txt");
print ref($output),"\n\n";
#print Dumper($output);
print $output->{SEQ_ID2}->{"seq"}->[4],"\n";   #gib mir von dem ersten array, den ich abgespeichert habe das 5. element
print $output->{SEQ_ID2}->{"quality"}->[4],"\n";
