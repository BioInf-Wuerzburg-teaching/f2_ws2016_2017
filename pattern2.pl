use warnings;
use strict;
use functions;

my $seq="AATCATGATAATCATGA";

while ($seq=~ /(A\w+?)(T[GC])/g)
{
    print $1, "\n";
}

print "\n\n";

my $seq="AATCATGATAATCATGA";

while ($seq=~ /(A\w+)(T[GC])/g)
{
    print $1, "\n";
}
