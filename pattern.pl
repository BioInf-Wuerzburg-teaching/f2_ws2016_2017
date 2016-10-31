use warnings;
use strict;
use functions;

my $seq="GATATATGCATATACTT";

print "$seq\n";

while($seq=~/(ATAT)/g)
{
    print $1,"\n";
}
