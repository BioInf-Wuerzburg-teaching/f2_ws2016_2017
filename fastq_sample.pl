use strict;
use warnings;
use functions;
use Data::Dumper;

my $output=&functions::fastq("fastq_sample.txt");
print ref($output),"\n\n";
print Dumper($output);
