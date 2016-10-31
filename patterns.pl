use warnings;
use strict;
use functions;

my $dna="GTACATATAT";

if ($dna=~/A.AT/)
{
    print "found\n";
}
else
{
    print "not found\n";
}

#my @bla=split(/ACAT/,$dna);
#print "@bla\n";

#my @bla=split(/A.AT/,$dna);
#print "@bla\n";

#my @bla=split(/A[GC]AT/,$dna);
#print "@bla\n";

#my @bla=split(/A\wAT/,$dna);
#print "@bla\n";

my @bla=split(/A\w+AT/,$dna);
print "@bla\n";
