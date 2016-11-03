use warnings;
use strict;
use functions;
use Data::Dumper;


my $output=&functions::fastq("fastqbsp.txt");
print ref($output),"\n";
print Dumper($output);
