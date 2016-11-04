use warnings;
use strict;
use functions;

my $dna="GTACATATAT";

if($dna=~/A.AT/)
{
    print "found\n";
}

else
{
    print "not found\n";
}

my @bases=split(/A.AT/, $dna);
print "@bases\n";

@bases=split(/A[CG]AT/, $dna);
print "@bases\n";

@bases=split(/A\wAT/, $dna);
print "@bases\n";

@bases=split(/A\w{2}AT/, $dna);
print "@bases\n";
